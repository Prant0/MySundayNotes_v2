import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:http/http.dart';
import 'package:my_sunday_notes_v2/http_request/custom_http_request.dart';
import 'package:my_sunday_notes_v2/model/sod_model.dart';
import 'package:my_sunday_notes_v2/model/user_model.dart';
import 'package:my_sunday_notes_v2/provider/home_provider.dart';
import 'package:my_sunday_notes_v2/screen/web_view_activity.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SODDetailsPage extends StatefulWidget {
  SODModel sodModel;
  List<SODModel> allObjects;

  SODDetailsPage({Key? key, required this.allObjects, required this.sodModel})
      : super(key: key);

  @override
  State<SODDetailsPage> createState() => _SODDetailsPageState();
}

class _SODDetailsPageState extends State<SODDetailsPage> {
  @override
  void initState() {
    loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    var sodData = Provider.of<HomeProvider>(context).allSODData;
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back,color: yellowDark,),
        title: Text(
          "${widget.sodModel.post_title}",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          IconButton(
              onPressed: () async {
                try {
                  final response =
                      await get(Uri.parse(widget.sodModel.guid.toString()));
                  final bytes = response.bodyBytes;
                  final Directory temp = await getTemporaryDirectory();
                  final File imageFile = File('${temp.path}/tempImage.png');
                  imageFile.writeAsBytesSync(response.bodyBytes);
                  //Share.share("text");
                 /* Share.shareFiles(
                    ['${temp.path}/tempImage.png'],
                    text: "${widget.sodModel.guid}",
                  );*/
                } catch (err) {
                  print('Something is wrong in sharing');
                }
              },
              icon: Icon(
                Icons.share,
                color: yellowDark,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        child: userModel != null
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Center(
                          child: CircleAvatar(
                            //radius: 50,
                            maxRadius: 50,
                            backgroundImage: NetworkImage(
                                "${imageUrl}${userModel!.avatar_thumb}"),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "${userModel!.display_name}",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "${userModel!.first_name }",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebViewActivity("https://mysundaynotes.com/profile/${userModel!.username}")));
                          },
                          child: Text("https://mysundaynotes.com/profile/${userModel!.username}",
                              style: myStyle(tSmall, grayClr, FontWeight.w700)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(bodyPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${userModel!.bio ?? ""}",
                              style: myStyle(
                                  tSmall, yellowLight, FontWeight.w700)),
                          Text("" + userModel!.service_time,
                              style: myStyle(
                                  tSmall, yellowLight, FontWeight.w700)),
                          Text("${userModel!.church_address ?? ""}",
                              style: myStyle(
                                  tSmall, yellowLight, FontWeight.w700)),
                          Text("${userModel!.email ?? ""}",
                              style: myStyle(
                                  tSmall, yellowLight, FontWeight.w700)),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: yellowDark,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Come Join Us at Church",
                        style: myStyle(tSmall, blackDark),
                      ),
                    ),

                    Container(
                        height: 250,
                        width: double.infinity,

                        child: Stack(
                          children: [
                            /*WebView(
                              initialUrl: Uri.dataFromString('<html><body><iframe width="100%" height="100%" frameborder="0" allowfullscreen src="${location}"></iframe></body></html>', mimeType: 'text/html',).toString(),
                              javascriptMode: JavascriptMode.unrestricted,
                              zoomEnabled: false,
                              gestureNavigationEnabled: true,

                            ),*/
                            Positioned(child: InkWell(
                              onTap: (){
                                print("ssssssssssssssssssssssssssss");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WebViewActivity(
                                    Uri.dataFromString('<html><body><iframe width="100%" height="100%" frameborder="0" allowfullscreen src="${location}"></iframe></body></html>', mimeType: 'text/html',).toString()
                                )));
                              },
                            ))
                          ],
                        )
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: blackDark,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Today's Scripture of the day",
                        style: myStyle(tSmall, yellowLight),
                      ),
                    ),
                    Container(
                      color: yellowLight,
                      padding: EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          "${widget.sodModel.guid}",
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: blackLight,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.sodModel.post_title ?? ""}",
                            style:
                                myStyle(tMedium, yellowDark, FontWeight.bold),
                          ),
                          Text(
                            "${widget.sodModel.c_date}",
                            style: myStyle(tSmall, grayClr, FontWeight.bold),
                          ),
                          Text(
                            "${widget.sodModel.c_day}",
                            style: myStyle(tSmall, grayClr, FontWeight.bold),
                          ),
                          Text(
                            "${jsonData['c_s_title'] ?? ""}",
                            style: myStyle(tSmall, grayClr, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: yellowLight,
                      child: Html(
                        data: "${widget.sodModel.post_content ?? ""}",
                        style: {
                          'html': Style(
                              fontSize: FontSize.large,
                              fontWeight: FontWeight.w600),
                          'h1': Style(color: Colors.blue),
                          'p': Style(color: Colors.black),
                        },
                      ),
                    ),

                    /*Html(
                      data: "${widget.sodModel.post_content}",
                    ),*/

                    Container(
                      width: double.infinity,
                      color: blackLight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              "Related SOD",
                              style:
                                  myStyle(tLarge, yellowDark, FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                              height: 170,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: widget.allObjects.length > 5
                                      ? 5
                                      : widget.allObjects.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SODDetailsPage(
                                                      sodModel: sodData[index],
                                                      allObjects: sodData,
                                                    )));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 12),
                                        width: 140,
                                        child: Column(
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                ClipRRect(
                                                  child: Image(
                                                    image: NetworkImage(
                                                        "${widget.allObjects[index].guid}"),
                                                    fit: BoxFit.cover,
                                                    height: 110,
                                                    width: 200,
                                                    errorBuilder: (context,
                                                            exception,
                                                            stackTrack) =>
                                                        Image(
                                                      image: AssetImage(
                                                          'assets/placeholder.png'),
                                                      fit: BoxFit.cover,
                                                      height: 110,
                                                      width: 200,
                                                    ),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "${widget.allObjects[index].post_title ?? ""}",
                                                  maxLines: 1,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : spinkit,
      ),
    );
  }

  loadUserData() {
    String id = widget.sodModel.id.toString();
    setState(() {
      isLoading = true;
    });
    CustomHttpRequest.loadUserData({'post_id': widget.sodModel.id}).then((value) {
      print("idddddddddddddddddddddddddddddds$id");
      var jsonObject = jsonDecode(value.body.toString());

      UserModel userMeta = UserModel(
          jsonObject['user_id'].toString(),
          jsonObject['username'].toString(),
          jsonObject['email'].toString(),
          jsonObject['first_name'].toString(),
          jsonObject['last_name'].toString(),
          jsonObject['avatar_thumb'].toString(),
          jsonObject['banner_thumb'].toString(),
          jsonObject['display_name'].toString(),
          jsonObject['bio'].toString(),
          jsonObject['service_time'].toString(),
          jsonObject['church_address'].toString(),
          jsonObject['phone'].toString());

      if (mounted) {
        setState(() {
          isLoading = false;
          location = jsonObject["google_map"];
          jsonData = jsonObject['data'];
          userModel = userMeta;
          print("id isssssssssssssssssssssssssssw${location}");
        });
      }
    });
  }

  UserModel? userModel;
  var jsonData = {};
  String? location;
  bool isLoading = false;
  String mapApi="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNUwtuLtM8qL4qXQv-G_9TLELbmrWV27g&sensor=false";
String keyy="AIzaSyDNUwtuLtM8qL4qXQv-G_9TLELbmrWV27g";
 String l="www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13263.278409875657!2d-117.9127986!3d33.7911564!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe054023f9e6b5072!2sMySundayNotes!5e0!3m2!1sen!2sbd!4v1675400171516!5m2!1sen!2sbd";
String r="!1m14!1m8!1m3!1d13263.278409875657!2d-117.9127986!3d33.7911564!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe054023f9e6b5072!2sMySundayNotes!5e0!3m2!1sen!2sbd!4v1675400171516!5m2!1sen!2sbd";

String x="https://www.google.com/maps/embed/v1/place?q=place_id:!1m14!1m8!1m3!1d13263.278409875657!2d-117.9127986!3d33.7911564!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe054023f9e6b5072!2sMySundayNotes!5e0!3m2!1sen!2sbd!4v1675400171516!5m2!1sen!2sbd&key=AIzaSyDNUwtuLtM8qL4qXQv-G_9TLELbmrWV27g";
}
