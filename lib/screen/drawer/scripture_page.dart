import 'dart:convert';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mysundaynotes/widget/custome_http.dart';
import 'package:mysundaynotes/widget/widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class scriptureActivity extends StatefulWidget {
  String id, title;
  List? chapterList;
int indexNo;
  scriptureActivity(this.id, this.title,this.chapterList,this.indexNo);
  @override
  State<scriptureActivity> createState() => _scriptureActivity();
}

class Scriptures{
  String id, title, url;
  Scriptures(this.id, this.title, this.url);
}

class _scriptureActivity extends State<scriptureActivity> {

  List<Scriptures> allElems = [];
  String selectedTitle = "";
  String selectedURL = "";
bool isLoading=false;


  String ?idd,title;
  int ?indexNo;
  loadData(id){
    allElems = [];
    isLoading=true;
    setState(() {

    });
    print(" id issssssssssssssssssss${id}");
    var elem = {

    };
    CustomHttpRequest.loadScriptures(id).then((value) {
      print("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr${value.body.toString()}");
      var jsonData = json.decode(value.body.toString());
      //this.selectedTitle = jsonData['title']['rendered'].toString();
      this.selectedTitle = jsonData['title']['rendered'].toString()??"";
      this.selectedURL = selectedTitle.replaceAll(" ", "-")+'-summary';//jsonData['link'].toString();
      selectedTitle=selectedTitle+" Summary";
      //selectedURL = selectedURL.replaceAll("https://", "https://app.");
      var gallery = jsonData['gallery_data']['gallery'];
      for(var elem in gallery){
        Scriptures scriptures = new Scriptures(elem['id'].toString(), elem['title'].toString(), elem['src'].toString());
        allElems.add(scriptures);
      }
      isLoading=false;
      this.setState(() {

      });
    });
  }

  @override
  void initState() {
    idd=widget.id;
    indexNo=widget.indexNo;
    title=widget.chapterList![widget.indexNo].title;
    loadData(idd);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(


        elevation: 0,
        leading: new IconButton(
          icon:  Icon(Icons.arrow_back, color: yellowDark,size: 30,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: new Text(title!, style: TextStyle(
            color: yellowDark
        ),),
        shadowColor: Colors.transparent,
        backgroundColor: blackDark,
        foregroundColor: Colors.white,

      ),
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: Column(
          children: [

         Expanded(
              flex: 15,
              child:isLoading==true?Image.asset("assets/loader.gif",height: 100,width: 100,):  GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height /2.8),
                ),
                itemCount: allElems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      print("xxxx");
                      _showMyDialog(index);
                    },
                    child: Card(
                      color: blackCLr,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),

                      ),
                      child: Padding(
                        padding:   EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(image: NetworkImage(allElems[index].url),
                              fit: BoxFit.fill,
                              errorBuilder: (context, exception, stackTrack) => Icon(Icons.error,),
                            ),

                            Text(allElems[index].title, maxLines: 1,style: Theme.of(context).textTheme.titleSmall,)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    try{
                      indexNo=indexNo!-1;
                      idd=widget.chapterList![indexNo!].id;
                      allElems.clear();
                      setState(() {
                        title=widget.chapterList![indexNo!].title;
                      });
                      loadData(idd);
                      print("Next Id is $indexNo ${idd} $title");
                    }catch(e){
                      indexNo=indexNo!+1;
                      print("Error catch");
                      showInToast("No More Data Found");
                    }


                  }, child: Text("Previous\n Chapter",style: myStyle(16,yellowDark,FontWeight.w800),maxLines: 2,)),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("    All\nChapter",style: myStyle(16,yellowDark,FontWeight.w800),maxLines: 2,)),
                  TextButton(onPressed: (){
                    try{
                      indexNo=indexNo!+1;
                      idd=widget.chapterList![indexNo!].id;
                      allElems.clear();
                      setState(() {
                        title=widget.chapterList![indexNo!].title;
                      });
                      loadData(idd);
                      print("Next Id is $indexNo ${idd} $title");
                    }catch(e){
                      indexNo=indexNo!-1;
                      print("Error catch");
                      showInToast("No More Data Found");
                    }
                  },  child: Text("   Next\nChapter",style: myStyle(16,yellowDark,FontWeight.w800),maxLines: 2,)),
                ],

              ),),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog(dynamic index) async {
    int shareIndex =index;
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.clear,
                              color: Colors.white,
                              size: 28,)))),
                Container(
                  margin: EdgeInsets.all(15),
                  child: CarouselSlider.builder(
                    itemCount: allElems.length,
                    options: CarouselOptions(
                      onPageChanged: (index, reason){
                        shareIndex=index;
                      },
                      initialPage: index,
                      enlargeCenterPage: true,
                      height: 200,
                      autoPlay: false,
                      reverse: false,
                      aspectRatio: 5.0,
                    ),
                    itemBuilder: (context, i, id){
                      //for onTap to redirect to another screen
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white,)
                        ),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(image: NetworkImage(allElems[i].url,),
                            width: 500,
                            fit: BoxFit.fill,
                            errorBuilder: (context, exception, stackTrack) => Icon(Icons.error,),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(yellowDark),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(
                          color: yellowDark,
                          width: 5,
                        ),
                      ),
                    ),
                  ),
                  child: Text('Share',style: myStyle(16,Colors.black,FontWeight.w800),),
                  onPressed: () {
                    print("shareing ");
                    shareImage(allElems[shareIndex]);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }



  void shareImage(elem) async {
    final response = await get(Uri.parse(elem.url));
    final bytes = response.bodyBytes;
    final Directory temp = await getTemporaryDirectory();
    final File imageFile = File('${temp.path}/tempImage.png');
    imageFile.writeAsBytesSync(response.bodyBytes);
   // Share.share("text");
    Share.shareFiles(['${temp.path}/tempImage.png'], text: elem.title,);
  }
}
//