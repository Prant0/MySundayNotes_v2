import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/model/sod_model.dart';
import 'package:http/http.dart'as http;
import 'package:my_sunday_notes_v2/screen/sod_details_page.dart';
import 'dart:convert';

import 'package:my_sunday_notes_v2/widget/widget.dart';

class Sub_Categories_Show extends StatefulWidget {
  int ? id;

  String? title = "";
    Sub_Categories_Show({Key? key,this.title,this.id}) : super(key: key);

  @override
  _Sub_Categories_ShowState createState() => _Sub_Categories_ShowState();
}

class _Sub_Categories_ShowState extends State<Sub_Categories_Show> {
  int page = 1;
  bool hasMore = true;
  int limit = 10;
  bool isLoading = false;
  List litems = [];
  List<String> linkList = [];
  List<SODModel> allObjects = [];

  loadData() async {
    try{
      print("Id isss${widget.id}");
      if (isLoading) return;
      isLoading = true;
      var url = "https://mysundaynotes.com/wp-json/wp/v2/posts?categories=${widget
          .id}&per_page=$limit&page=$page";
      var responce = await http.get(Uri.parse(url));
      var array = jsonDecode(responce.body);

      if (array[0] == null) {
        print("No link found");
        setState(() {
          hasMore = false;
        });
        print("$hasMore");
      } else {
        print("  link found");

      }
      for (var elem in array) {
        SODModel obj = new SODModel(
           id: elem['id'].toString(),
            post_author:  elem['author'].toString(),
            post_date:  elem['date'].toString(),
            post_content:  elem['content']['rendered'].toString(),
            post_title: elem['title']['rendered'].toString(),
            guid: elem['x_featured_media_large'].toString(),
            post_name: elem['x_categories'].toString(),
            c_date:  elem['x_metadata']['c_date'].toString(),
            c_day: elem['x_metadata']['c_day'].toString());
        var link = elem["link"];
        linkList.add(link);
        allObjects.add(obj);
      }


      if (mounted)
        this.setState(() {
          page++;
          isLoading = false;
        });
    }catch(e){
      showInToast("No Data Found");
      print("Something is wrong");
      setState(() {
        hasMore=false;
      });
    }

  }

  Future refresh() async {
    setState(() {
      isLoading = false;
      hasMore = false;
      page = 1;
      allObjects.clear();
    });
    loadData();
  }

  @override
  void initState() {
    loadData();

    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        loadData();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: yellowDark,size: 30,
          ),
        ),
        centerTitle: true, 
        title: Text(
          "${widget.title}",
          style: myStyle(22,yellowDark,FontWeight.w900),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  //controller: controller,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allObjects.length ,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return   InkWell(
                      onTap: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => SODDetailsPage(
                              allObjects: allObjects,sodModel: allObjects[index],));
                        Navigator.push(context, route);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              
                              child: Image(
                                image: NetworkImage(allObjects[index].guid.toString()),
                                fit: BoxFit.cover,width: double.infinity ,
                                height: 150,
                                errorBuilder: (context, exception,
                                    stackTrack) =>
                                    Image(
                                      image: AssetImage(
                                          'assets/placeholder.png'),
                                      fit: BoxFit.fill,
                                      height: 170,
                                      width: double.infinity,
                                    ),
                              ),borderRadius: BorderRadius.circular(20),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              allObjects[index].post_title.toString(),style: Theme.of(context).textTheme.titleMedium,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    );

                  }),

              /*hasMore==true? Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              )): Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("No More Data Found",style: TextStyle(
                      fontSize: 18,color: Colors.black
                  ),),
                ),
              ),*/

            ],
          ),


        ),
      ),
    );
  }

}
