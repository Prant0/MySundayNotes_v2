import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_sunday_notes_v2/model/author_model.dart';
import 'package:my_sunday_notes_v2/model/sod_model.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class CustomHttpRequest {
  static Future<dynamic> loadSODData(int limit, int page) async {
    //print("Page no isssssssssssssssssssss$page");
    List<SODModel> allObjectsList = [];


    var url =
        "${baseUrl}posts?per_page=$limit&page=$page"; //Constants.baseURL + "explore_frame.php";
    var responce = await http.get(Uri.parse(url));


   // print("all SOD data areeeeeeeee$data");

    return responce;
  }


  static Future<dynamic> loadAllChurchData(int limit, int page) async {
    List<Authors> allChurchList = [];
    var url =
        "https://mysundaynotes.com/wp-json/wp/v2/users?per_page=$limit&page=$page"; //Constants.baseURL + "search_authors.php";
    var responce = await http.get(Uri.parse(url));
    print("responce status code is ${responce.statusCode} $page ");
   // print("responce   is ${responce.body} ");
    return responce;

  }


  static Future loadUserData(queryParams) {
    var url = baseUrl2 + "load_usermeta.php";
    return http.post(Uri.parse(url), body: queryParams);
  }

  static Future searchAuthors(queryParams) {
    //var url="https://mysundaynotes.com/wp-json/wp/v2/users?per_page=2&page=3";
    var url = "https://mysundaynotes.com/wp-json/wp/v2/users?search=$queryParams";//Constants.baseURL + "search_authors.php";
    return http.get(Uri.parse(url));
  }

  static Future loadSelectedAuthorData(int queryParams,int limit,int page) {
    var url = "https://mysundaynotes.com/wp-json/wp/v2/posts?author=$queryParams&per_page=$limit&page=$page" ;//Constants.baseURL + "user_selected_sods.php";
    return http.get(Uri.parse(url));
  }
  static Future loadSidebarCategories(queryParams) {
    var url = baseUrl2 + "scriptures_parents.php";
    //print("ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt$url");
    return http.get(Uri.parse(url));
  }
  static Future loadScriptures(queryParams) {
    var url = "https://mysundaynotes.com/wp-json/wp/v2/envira-gallery/"+queryParams;//Constants.baseURL + "load_scriptures.php";

    print("Url issssssssssssssssssssssssssss$url");
    return http.get(Uri.parse(url));
  }
  static Future loadCategories(int limit,int page) {
    print("page isssssssss$page");
    var url = "https://mysundaynotes.com/wp-json/wp/v2/categories?per_page=$limit&page=$page";//Constants.baseURL + "scriptures_parents.php";
    return http.get(Uri.parse(url));
  }
}
