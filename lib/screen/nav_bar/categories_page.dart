
import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/new_screen/new_tastement.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class CategoriesPage extends StatefulWidget {
  int id;
  CategoriesPage({Key? key,required this.id}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {


  List newArray = [
    'Matthew',
    'Mark',
    'Luke',
    'John',
    'Acts',
    'Romans',
    '1 Corinthians',
    '2 Corinthians',
    'Galatians',
    'Ephesians',
    'Philippians',
    'Colossians',
    'Thessalonians',
    'Timothy',
    'Titus',
    'Philemon',
    'Hebrews',
    'James',
    'Peter',
    //'1-2-3 John',
    'Jude',
    'Revelation'
  ];






  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  final controller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

      appBar: AppBar(

        centerTitle: true,

        title: Text("MySundayNotes", style: myStyle(25,iconClr,FontWeight.w800),),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: iconClr,
            height: 2.0,
          ),
        ),

      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            InkWell(
              onTap: (){

                var snackBar = SnackBar(content: Text('Coming Soon',style: myStyle(20,yellowDark,FontWeight.w800),),backgroundColor: blackCLr,);
                ScaffoldMessenger.of(context).showSnackBar(snackBar,);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Text(
                  widget.id==1?"OLD Testament":"SOD Studies",
                              style: TextStyle(
                    inherit: true,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w800,
                    color: iconClr,
                    shadows: [
                      Shadow( // bottomLeft
                          offset: Offset(-2.5, -2.5),
                          color: blackCLr
                      ),
                      Shadow( // bottomRight
                          offset: Offset(2.5, -2.5),
                          color: blackCLr
                      ),
                      Shadow( // topRight
                          offset: Offset(2.5, 2.5),
                          color: blackCLr
                      ),
                      Shadow( // topLeft
                          offset: Offset(-2.5, 2.5),
                          color: blackCLr
                      ),
                    ]
                ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/1.png"),fit: BoxFit.fill
                        )),
              ),
            ),
            InkWell(
              onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewTastament()));
              },
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Text(
                      widget.id==1?"New Testament":  "SOD Studies",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w800,
                          color: iconClr,
                          shadows: [
                            Shadow( // bottomLeft
                                offset: Offset(-2.5, -2.5),
                                color: blackCLr
                            ),
                            Shadow( // bottomRight
                                offset: Offset(2.5, -2.5),
                                color: blackCLr
                            ),
                            Shadow( // topRight
                                offset: Offset(2.5, 2.5),
                                color: blackCLr
                            ),
                            Shadow( // topLeft
                                offset: Offset(-2.5, 2.5),
                                color: blackCLr
                            ),
                          ]
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/3.png"),fit: BoxFit.fill)),
                  ),
                  Positioned(child: Text(widget.id==1? "":"New Testament",style:Theme.of(context).textTheme.titleMedium),
                    bottom: 30,
                    right: 35,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  int page=1;
  bool hasMore=true;
  int limit=40;
  bool isLoading =false;

/*
  loadCategories() {
    if(isLoading) return;
    isLoading=true;
    CustomHttpRequest.loadCategories(limit,page).then((value) {
      //print(value.body.toString());
      var jsonData = json.decode(value.body.toString());
      for (var element in jsonData) {
        CategoryModel cat = new CategoryModel();
        cat.fromJson(element);
        allCategories.add(cat);
        // print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx${cat.title}");
      }
      setState(() {
        page++;

        isLoading=false;
        print("page isssssssss$page");
        print("eeeeeeeeeeee${jsonData}");
        if(jsonData.isEmpty){
          setState(() {
            hasMore=false;
          });
          print("Has no more data $hasMore");
        }

      });

      allCategories.sort((a, b) {
        return a.title.toLowerCase().compareTo(b.title.toLowerCase());
      });



      for (int i = 0; i < allCategories.length; i++) {

        newArray.contains(allCategories[i].title)
            ? newCategories.add(allCategories[i])
            : oldCategories.add(allCategories[i]);

      }



      if (mounted) {
        this.setState(() {});
      }
      print("Old length is ${oldCategories.length}");
    });
  }

  Future refresh()async{
    setState(() {
      isLoading=false;
      hasMore=false;
      page=1;
      allCategories.clear();
    });
    loadCategories();
  }*/


}
