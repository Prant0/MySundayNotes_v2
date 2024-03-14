import 'dart:convert';

import 'package:http/http.dart' as http;

class CustomHttpRequest {

  static Future loadScriptures(queryParams) {
    var url = "https://mysundaynotes.com/wp-json/wp/v2/envira-gallery/"+queryParams;//Constants.baseURL + "load_scriptures.php";

    print("Url issssssssssssssssssssssssssss$url");
    return http.get(Uri.parse(url));
  }

}