import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/provider/home_provider.dart';
import 'package:my_sunday_notes_v2/provider/home_provider.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/nav_bar_page.dart';
import 'package:my_sunday_notes_v2/screen/sod_details_page.dart';
import 'package:my_sunday_notes_v2/screen/splash_screen.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';
import 'package:provider/provider.dart';



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


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
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
      //  home: SplashScreen()
        home:NavBarPage()
      ),
    );
  }
}