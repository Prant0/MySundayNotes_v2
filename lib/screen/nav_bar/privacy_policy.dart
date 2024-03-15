
import 'package:flutter/material.dart';
import 'package:mysundaynotes/customeList/privacy_policy_text.dart';
import 'package:mysundaynotes/widget/widget.dart';
import 'package:html/parser.dart';
class PrivacyPolicy extends StatefulWidget {
  PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  final GlobalKey<ScaffoldState> _scaffoldKey =   GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
     // drawer: CustomDrawer(),
      appBar: AppBar(
     /*   leading: IconButton(
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
          "Privacy & Policy",
          style: myStyle(25, iconClr, FontWeight.w800),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: iconClr,
            height: 2.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,top: 16,right: 16),
        child:SingleChildScrollView(
          child: Text(
            parseHtmlString("$policyText")
                .toString(),
            style: myStyle(18, Colors.white, FontWeight.w500),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
String? parseHtmlString(String htmlString) {
  final document = parse(htmlString);
  final String? parsedString =
      parse(document.body?.text).documentElement?.text;

  return parsedString;
}