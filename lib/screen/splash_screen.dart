import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_sunday_notes_v2/provider/home_provider.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/nav_bar_page.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String notificationAlert = "";

  loadDrawer() async {
    try{
      await Provider.of<HomeProvider>(context, listen: false)
          .getSODData(
        15,
      )
          .then((value) async {
        await Provider.of<HomeProvider>(context, listen: false).getAllChurchData(
          20,
        );
      }).then((value) async {
        await Provider.of<HomeProvider>(context, listen: false)
            .loadDrawerCategories();
      }).then((value) async {
        await Provider.of<HomeProvider>(context, listen: false).loadCategories();
      }).then((value) => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => NavBarPage())));
    }catch(e){
      showInToast("Check your Internet connection");
    }
  }

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
