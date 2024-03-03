import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/customeList/custome_list.dart';
import 'package:my_sunday_notes_v2/new_screen/new_tastement.dart';
import 'package:my_sunday_notes_v2/screen/drawer/scripture_page.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';


class ChapterScreen extends StatefulWidget {
    ChapterScreen({super.key,required this.newTastamentModel});

  NewTastamentModel  newTastamentModel;

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            color: yellowDark,
          ),
          centerTitle: true,
          title: Text(
            "${widget.newTastamentModel!.name}",
            style: myStyle(25, yellowDark, FontWeight.w800),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          width: double.infinity,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.newTastamentModel.chapterList!.length,
              itemBuilder: (context, index) {
                var data=widget.newTastamentModel.chapterList![index];
                return GestureDetector(
                  onTap: () {
                print("index isssss${index}");
                    //https://mysundaynotes.com/wp-json/wp/v2/envira-gallery/6739

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => scriptureActivity(widget.newTastamentModel.chapterList![index].id,
                            widget.newTastamentModel.chapterList![index].title.toString(), widget.newTastamentModel.chapterList,index)
                      ));
                    },

                  child: Container(
                    margin: EdgeInsets.only(bottom: 12),
                    alignment: Alignment.center,
                    height: 100,
                    width: double.infinity,
                    child: Text(
                      "${widget.newTastamentModel.chapterList![index].title}",
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
                            image: NetworkImage("${widget.newTastamentModel.chapterList![index].image}"), fit: BoxFit.cover)),
                  ),
                );
              }),
        ));
  }
}
