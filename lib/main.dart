import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mysundaynotes/screen/splash_screen.dart';
import 'package:mysundaynotes/widget/widget.dart';



class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main(){
  HttpOverrides.global = new MyHttpOverrides();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySundayNotes',
      routes: {
      //  "SODDetails":(context)=>SODDetailsPage(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

     scaffoldBackgroundColor: blackCLr,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: yellowDark
          ),
          color: blackCLr,
          elevation: 0,
        ),
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: yellowDark,
        ),

        textTheme: TextTheme(

          titleLarge:  myStyle(tLarge,yellowDark,FontWeight.w600),
          titleMedium:  myStyle(tMedium,yellowDark,FontWeight.w400),
          titleSmall:  myStyle(tSmall,yellowDark,FontWeight.w600),
        )
      ),
    home: SplashScreen()
     // home:NavBarPage()
    );
  }
}