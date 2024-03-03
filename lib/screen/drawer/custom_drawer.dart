import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/model/category_model.dart';
import 'package:my_sunday_notes_v2/provider/home_provider.dart';
import 'package:my_sunday_notes_v2/screen/drawer/scripture_page.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/find_church.dart';
import 'package:my_sunday_notes_v2/screen/web_view_activity.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatefulWidget {


  CustomDrawer({Key? key, }) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<CategoryModel> allCategories = [];
  List<Widget> categoryWidgets = [];
  List<Widget> oldCategoryModelWidgets = [];

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

  Widget tile(CategoryModel obje) {
    return ListTile(
      iconColor: yellowDark,

      textColor: yellowDark,
      onTap: () {
       /* Route route = MaterialPageRoute(builder: (context) => scriptureActivity(obje.id, obje.title,obje));
        Navigator.push(context, route);*/
      },
      title: Text(obje.title),
    );
  }
  List<CategoryModel> newCategories = [];
  List<CategoryModel> oldCategories = [];
  updateCategories() {
    allCategories.sort((a, b) {
      return a.title.toLowerCase().compareTo(b.title.toLowerCase());
    });



    for (int i = 0; i < allCategories.length; i++) {

      newArray.contains(allCategories[i].title)
          ? newCategories.add(allCategories[i])
          : oldCategories.add(allCategories[i]);

    }

    List<Widget> aToe = [];
    List<Widget> fToJ = [];
    List<Widget> kToO = [];
    List<Widget> pToT = [];
    List<Widget> uToZ = [];

    for (int i = 0; i < newCategories.length; i++) {
      if (RegExp(r"^[a-eA-E0-9]+")
          .hasMatch(newCategories[i].title.characters.first)) {
        aToe.add(tile(newCategories[i]));
      }
      if (RegExp(r"^[f-jF-J]+")
          .hasMatch(newCategories[i].title.characters.first)) {
        fToJ.add(tile(newCategories[i]));
      }
      if (RegExp(r"^[k-oK-O]+")
          .hasMatch(newCategories[i].title.characters.first)) {
        kToO.add(tile(newCategories[i]));
      }
      if (RegExp(r"^[p-tP-T]+")
          .hasMatch(newCategories[i].title.characters.first)) {
        pToT.add(tile(newCategories[i]));
      }
      if (RegExp(r"^[u-zU-Z]+")
          .hasMatch(newCategories[i].title.characters.first)) {
        uToZ.add(tile(newCategories[i]));
      }
    }

    categoryWidgets.add(ExpansionTile(
      title: Text("A to E"),
      children: aToe,
    ));

    categoryWidgets.add(ExpansionTile(
      title: Text("F to J"),
      children: fToJ,
    ));

    categoryWidgets.add(ExpansionTile(
      title: Text("K to O"),
      children: kToO,
    ));

    categoryWidgets.add(ExpansionTile(
      title: Text("P to T"),
      children: pToT,
    ));

    categoryWidgets.add(ExpansionTile(
      title: Text("U to Z"),
      children: uToZ,
    ));

    List<Widget> aToe_ = [];
    List<Widget> fToJ_ = [];
    List<Widget> kToO_ = [];
    List<Widget> pToT_ = [];
    List<Widget> uToZ_ = [];

    for (int i = 0; i < oldCategories.length; i++) {
      if (RegExp(r"^[a-eA-E0-9]+")
          .hasMatch(oldCategories[i].title.characters.first)) {
        aToe_.add(tile(oldCategories[i]));
      }
      if (RegExp(r"^[f-jF-J]+")
          .hasMatch(oldCategories[i].title.characters.first)) {
        fToJ_.add(tile(oldCategories[i]));
      }
      if (RegExp(r"^[k-oK-O]+")
          .hasMatch(oldCategories[i].title.characters.first)) {
        kToO_.add(tile(oldCategories[i]));
      }
      if (RegExp(r"^[p-tP-T]+")
          .hasMatch(oldCategories[i].title.characters.first)) {
        pToT_.add(tile(oldCategories[i]));
      }
      if (RegExp(r"^[u-zU-Z]+")
          .hasMatch(oldCategories[i].title.characters.first)) {
        uToZ_.add(tile(oldCategories[i]));
      }
    }

    oldCategoryModelWidgets.add(ExpansionTile(iconColor: yellowDark,
      collapsedIconColor: yellowDark,
      collapsedTextColor: yellowDark,
      textColor: yellowDark,
      title: Text("A to E"),
      children: aToe_,
    ));

    oldCategoryModelWidgets.add(ExpansionTile(iconColor: yellowDark,
      collapsedIconColor: yellowDark,
      collapsedTextColor: yellowDark,
      textColor: yellowDark,
      title: Text("F to J"),
      children: fToJ_,
    ));

    oldCategoryModelWidgets.add(ExpansionTile(iconColor: yellowDark,
      collapsedIconColor: yellowDark,
      collapsedTextColor: yellowDark,
      textColor: yellowDark,
      title: Text("K to O"),
      children: kToO_,
    ));

    oldCategoryModelWidgets.add(ExpansionTile(iconColor: yellowDark,
      collapsedIconColor: yellowDark,
      collapsedTextColor: yellowDark,
      textColor: yellowDark,
      title: Text("P to T"),
      children: pToT_,
    ));

    oldCategoryModelWidgets.add(ExpansionTile(iconColor: yellowDark,
      collapsedIconColor: yellowDark,
      collapsedTextColor: yellowDark,
      textColor: yellowDark,
      title: Text("U to Z"),
      children: uToZ_,
    ));

    this.setState(() {
      /*for(int i=0;i<allCategories.length;i++){
        if(newArray.contains(allCategories[i].title)){
          categoryWidgets.add(new ListTile(
            onTap: (){
              Route route = MaterialPageRoute(builder: (context) => scriptureActivity(widget.allCategories[i].id, widget.allCategories[i].title));
              Navigator.push(context, route);
            },
            title: Text(widget.allCategories[i].title),
          ));
        }else{
          oldCategoryModelWidgets.add(new ListTile(
            onTap: (){
              Route route = MaterialPageRoute(builder: (context) => scriptureActivity(widget.allCategories[i].id, widget.allCategories[i].title));
              Navigator.push(context, route);
            },
            title: Text(widget.allCategories[i].title),
          ));
        }
      }*/
    });
    print("length iss ${oldCategories.length}");
    print("new iss ${newCategories.length}");
  }

  @override
  void initState() {
    allCategories= Provider.of<HomeProvider>(context,listen: false).sidebarCats;
    updateCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.70,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton(onPressed: (){Navigator.of(context).pop();}, icon:Icon(Icons.menu,color: yellowDark,size: 35,)),
              ),

             Container(margin: EdgeInsets.only(top: 15),
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical: 16),
               color: yellowDark,
               child:  Text("          MySundayNotes",style: myStyle(24,blackLight,FontWeight.w800),),
             ),
              SizedBox(height: 20,),

              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Image.asset(
                  "assets/Home.png",
                  height: 25,
                  width: 25,
                ),
                title: Text(
                  "Home",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ExpansionTile(
                iconColor: yellowDark,
                collapsedIconColor: yellowDark,
                leading: Image.asset(
                  "assets/Bible-Scripture.png",
                  height: 25,
                  width: 25,
                ),
                title: Text(
                  "Bible Scripture",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                children: [
                  ExpansionTile(  iconColor: yellowDark,
                    collapsedIconColor: yellowDark,
                    collapsedTextColor: yellowDark,
                    textColor: yellowDark,

                    title: Text("Old Testaments"),
                    children: oldCategoryModelWidgets,
                  ),
                  ExpansionTile(  iconColor: yellowDark,
                    collapsedIconColor: yellowDark,
                    title: Text("New Testaments"),
                    children: categoryWidgets,
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.create,color: yellowDark,size: 30,),
                onTap: () {
                  Navigator.pop(context);
                   Route route = MaterialPageRoute(builder: (context) => WebViewActivity('https://app.mysundaynotes.com'));
                  Navigator.push(context, route);
                },
                title: Text(
                  "Create Scripture",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                   Route route = MaterialPageRoute(builder: (context) => FindChurchPage());
                  Navigator.push(context, route);
                }, leading: Icon(Icons.person_search,color: yellowDark,size: 30,),
                title: Text("Find Church",
                  style: Theme.of(context).textTheme.titleLarge,),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Route route = MaterialPageRoute(builder: (context) => WebViewActivity('https://mysundaynotes.com/privacy-policy/'));
                  Navigator.push(context, route);
                },
                leading: Icon(Icons.privacy_tip,color: yellowDark,size: 30,),
                title: Text("Privacy Policy",
                  style: Theme.of(context).textTheme.titleLarge,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
