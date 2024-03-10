import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/customeList/topics_list.dart';
import 'package:my_sunday_notes_v2/screen/drawer/custom_drawer.dart';
import 'package:my_sunday_notes_v2/screen/drawer/scripture_page.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class TopicsScreen extends StatelessWidget {
  TopicsScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey =   GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
     // drawer: CustomDrawer(),
      appBar: AppBar(
        /*leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
            //Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
          color: iconClr,
        ),*/
        centerTitle: true,
        title: Text(
          "Bible Topics",
          style: myStyle(25, iconClr, FontWeight.w800),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: iconClr,
            height: 2.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
            itemCount: topicsList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  var ind=topicsList.elementAt(index);
                  print("index issss${index}");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => scriptureActivity( topicsList[index].id,
                        topicsList[index].title.toString(),topicsList,index)
                      ));
                },
                child: Container(
                  height: 100,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage("${topicsList[index].image}"),fit: BoxFit.fill
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "${topicsList[index].title}",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                          color: iconClr,
                          shadows: [
                            Shadow( // bottomLeft
                                offset: Offset(- 1.5, -1.5),
                                color: blackCLr
                            ),
                            Shadow( // bottomRight
                                offset: Offset(1.5, -1.5),
                                color: blackCLr
                            ),
                            Shadow( // topRight
                                offset: Offset(1.5, 1.5),
                                color: blackCLr
                            ),
                            Shadow( // topLeft
                                offset: Offset(-1.5, 1.5),
                                color: blackCLr
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
