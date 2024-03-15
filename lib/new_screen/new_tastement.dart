import 'package:flutter/material.dart';
import 'package:mysundaynotes/customeList/custome_list.dart';
import 'package:mysundaynotes/new_screen/chapter_screen.dart';
import 'package:mysundaynotes/screen/drawer/scripture_page.dart';
import 'package:mysundaynotes/widget/widget.dart';


class NewTastament extends StatefulWidget {
  const NewTastament({super.key});

  @override
  State<NewTastament> createState() => _NewTastamentState();
}

class _NewTastamentState extends State<NewTastament> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.keyboard_backspace,
              size: 30, weight: 500,
            ),
            color: yellowDark,
          ),
          centerTitle: true,
          title: Text(
            "New Testament",
            style: myStyle(25, yellowDark, FontWeight.w800),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          width: double.infinity,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: newTastamentList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    print("${newTastamentList[index].id}");
                    //https://mysundaynotes.com/wp-json/wp/v2/envira-gallery/6739
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChapterScreen(
                      newTastamentModel: newTastamentList[index],

                    )));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 12),
                    alignment: Alignment.center,
                    height: 100,
                    width: double.infinity,
                    child: Text(
                      "${newTastamentList[index].name}",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,color: Color(0xffFBCD4A),
                          shadows: [
                            Shadow( // bottomLeft
                                offset: Offset(-1.5, -1.5),
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
                    decoration: BoxDecoration(
                        color: blackLight,
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage("${newTastamentList[index].image}"), fit: BoxFit.cover)),
                  ),
                );
              }),
        ));
  }

}
