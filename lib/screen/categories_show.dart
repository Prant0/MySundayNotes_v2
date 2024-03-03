import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/model/category_model.dart';
import 'package:my_sunday_notes_v2/screen/author_sod_page.dart';
import 'package:my_sunday_notes_v2/screen/drawer/scripture_page.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/sub_categories_show.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class CategoriesShow extends StatelessWidget {
  List<CategoryModel> categories;
  int id;bool? isOld;

  CategoriesShow({Key? key,required this.id, required this.categories,this.isOld}) : super(key: key);

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
            "Old Testament",
            style: myStyle(25, yellowDark, FontWeight.w800),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          width: double.infinity,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                print("id issssssssssssssssssssssssssssssssssssssssss${categories[index].id}");
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>id==1?scriptureActivity( categories[index].id,
                           categories[index].title,categories,index): Sub_Categories_Show(
                          id: int.parse(categories[index].id.toString()),
                          title: categories[index].title,
                        )));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 12),
                    alignment: Alignment.center,
                    height: 100,
                    width: double.infinity,
                    child: Text(
                      "${categories[index].title}",
                      style: TextStyle(
                          inherit: true,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffFBCD4A),
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
                            image: NetworkImage(isOld==true?"${oldList[index %
                                oldList.length]}" :"${newList[index %
                                newList.length]}"), fit: BoxFit.cover)),
                  ),
                );
              }),
        ));
  }

}
