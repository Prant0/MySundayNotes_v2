import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/http_request/custom_http_request.dart';
import 'package:my_sunday_notes_v2/model/author_model.dart';
import 'package:my_sunday_notes_v2/model/category_model.dart';
import 'package:my_sunday_notes_v2/model/sod_model.dart';

class HomeProvider with ChangeNotifier {
  List<SODModel> allSODData = [];
  List<Authors> allChurchList = [];
  int churchLength = 0;

  int pageNo = 1;
  int churchNo = 1;

  incrementSOD() {
    pageNo = pageNo + 1;
    notifyListeners();
  }

  incrementChurch() {
    churchNo = churchNo + 1;
    notifyListeners();
  }

  Future<dynamic> getSODData(
    int limit,
  ) async {

    final responce = await CustomHttpRequest.loadSODData(limit, pageNo);
    var data = json.decode(responce.body.toString());

    if (data[0] != null) {
      for (var elem in data) {
        if (elem['x_featured_media_large'] != null) {
          SODModel sodModel = new SODModel(
            id: elem['id'].toString(),
            post_author: elem['author'].toString(),
            post_date: elem['date'].toString(),
            post_content: elem['content']['rendered'].toString(),
            post_title: elem['title']['rendered'].toString(),
            guid: elem['x_featured_media_large'].toString(),
            post_name: elem['x_categories'].toString(),
            c_date: elem['x_metadata']['c_date'].toString(),
            c_day: elem['x_metadata']['c_day'].toString(),
            link: elem["link"],
          );
          try {
            allSODData.firstWhere((element) =>
                element.post_title == elem['title']['rendered'].toString());
          } catch (e) {
            allSODData.add(sodModel);
          }
        }
      }
    } else {
      print("No link found");
    }
    notifyListeners();
    print("Total length of all sod is ${allSODData.length}");
  }

  getAllChurchData(
    int limit,
  ) async {

    churchLength = allChurchList.length;
    CustomHttpRequest.loadAllChurchData(limit, churchNo).then((value) {
      var elem = json.decode(value.body);

      for (var i in elem) {
        Authors auth = Authors(
          id: i['id'].toString(),
          firstname: i['name'].toString(),
          lastname: i['last_name'].toString(),
          bio: i['description'].toString(),
          avatar_thumb: i['avatar_urls']['96'].toString(),
          photo: i['simple_local_avatar'] != null
              ? i['simple_local_avatar']["full"].toString()
              : "no photo pranto",
        );
        if (i['id'] != null) {
          print("wwwwwwwwwwwwwwwwwwww");
        } else {
          print("rrrrrrrrrrrrrrrrrrrrrrr");
        }
        try {
          allChurchList.firstWhere(
              (element) => element.id == i['id'].toString().toString());
        } catch (e) {
          allChurchList.add(auth);
        }

        //allChurchList.add(auth);
      }

      notifyListeners();
    });
  }

  List<CategoryModel> sidebarCats = [];

  loadDrawerCategories() {
    sidebarCats = [];
    CustomHttpRequest.loadSidebarCategories({}).then((value) {
      var jsonData = json.decode(value.body.toString());

      for (var element in jsonData) {
        CategoryModel cat = new CategoryModel();
        cat.id = element['ID'].toString();
        cat.title = element['post_title'].toString();

        sidebarCats.add(cat);
      }
    });
  }

  List<CategoryModel> allCategories = [];

  loadCategories() {
    CustomHttpRequest.loadCategories(100, 1).then((value) {
      var jsonData = json.decode(value.body.toString());
      for (var element in jsonData) {
        CategoryModel cat = new CategoryModel();
        cat.fromJson(element);
        allCategories.add(cat);
      }

      notifyListeners();
    });
  }
}
