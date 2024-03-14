import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2),(){
      isAnimation=true;
    });
    super.initState();
  }
  bool isAnimation =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: bodyPadding),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/home.png"), fit: BoxFit.cover)),
          child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [


                      ],
                    ),
        ),

      ),
    );
  }
}
