
import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/nav_bar_page.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String notificationAlert = "";


  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavBarPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackDark,
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: bodyPadding),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/home.png"), fit: BoxFit.cover)),

        ),
      ),
    );
  }
}
