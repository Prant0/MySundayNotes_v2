import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_sunday_notes_v2/http_request/custom_http_request.dart';
import 'package:my_sunday_notes_v2/model/author_model.dart';
import 'package:my_sunday_notes_v2/screen/author_sod_page.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class SearchChurchList extends StatefulWidget {
  @override
  State<SearchChurchList> createState() => _SearchChurchListState();
}

class _SearchChurchListState extends State<SearchChurchList> {
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: yellowLight,
        appBar: AppBar(
          backgroundColor: yellowLight,
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,),
            color: blackCLr,
          ),
          centerTitle: true,
          title: Text(
            "Find Church",
            style: myStyle(20, blackDark),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          width: double.infinity,
          child: Column(
            children: [
              TextField(
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  hintText: "Type search name",
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      searchNode=[];
                      searchController.clear();
                    });
                  },
                  icon: Icon(Icons.cancel,color: blackDark,),
                )
                ),
                cursorColor: blackDark,
                textInputAction: TextInputAction.search,
                autocorrect: false,
                obscureText: false,
                style: myStyle(20,blackDark,FontWeight.w600),
                keyboardType: TextInputType.text,
                controller: searchController,
                onSubmitted: (search) {
                  searchChurches(search);
                },
              ),
SizedBox(height: 20,),
              Flexible(
                child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 2.0),
                  ),
                  itemCount: searchNode.length,
                  shrinkWrap: false,
                  itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AuthorSodPage(
                              id: int.parse(searchNode[index].id.toString()),
                              title: searchNode[index].firstname,
                            )));
                      },
                      child:Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16 )
                        ),
                        color: blackLight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                child: ClipRRect(
                                  child: Container(
                                      child: Image.network(
                                          searchNode[
                                          index]
                                              .avatar_thumb
                                              .toString())),
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      50.0),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  "${searchNode[index].firstname ?? ""}",
                                  maxLines: 2,
                                  textAlign:
                                  TextAlign.center,
                                  style: myStyle(18,yellowDark,FontWeight.w700)
                              ),
                              Text(
                                  "${searchNode[index].bio ?? ""}",
                                  maxLines: 1,
                                  textAlign:
                                  TextAlign.center,
                                  style: myStyle(17,grayClr,FontWeight.w800 )
                              ),
                            ],
                          ),
                        ),
                      ),
                    );


                  },
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Authors> searchNode = [];

  FocusNode emailFocusNode = new FocusNode();

  TextEditingController searchController = new TextEditingController();

  bool isLoading=false;
  searchChurches(searches) {
    searchNode = [];
   // var query = {'search': searches};
    setState(() {
      isLoading=true;
    });
    CustomHttpRequest.searchAuthors(searches).then((value) {
      setState(() {
        isLoading=false;
      });

       print(value.body.toString());
      List elem = json.decode(value.body.toString());
      if(elem.isEmpty){
      showInToast("Opps ! No Data Found");
      }else{
        for (var individual in elem) {
          //  print(elem);
          Authors auth = Authors(
              id: individual['id'].toString(),
              firstname:  individual['name'].toString(),
              lastname:  individual['last_name'].toString(),
              bio: individual['description'].toString(),
              avatar_thumb:  individual['avatar_urls']['96'].toString());
          if (individual['simple_local_avatar'] != null) {
            photoList.add(individual['simple_local_avatar']["full"].toString());
          } else {
            showInToast("Opps! No Data Found");

            photoList.add(null);
          }
          searchNode.add(auth);

        }
      }

      if (mounted) {
        this.setState(() {});
      }
    });
  }
  List photoList = [];
}
