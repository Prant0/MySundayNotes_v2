

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:html/parser.dart';

const String baseUrl="https://mysundaynotes.com/wp-json/wp/v2/";
const String baseUrl2 = "https://apis.mysundaynotes.com/apis/";
const String imageUrl = "https://mysundaynotes.com/wp-content/uploads/";

const String demoImage="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80";



const Color blackCLr =Colors.black;
const Color blackDark =Color(0xff231f20);
const Color blackLight =Color(0xff3d423e);
const Color yellowDark =Color(0xfffbcd4a);
const Color yellowLight =Color(0xfff9f4a8);
const Color grayClr =Color(0xffe6e7e8);
const Color iconClr =Color(0xfffbcd4a);


const double bodyPadding=16;
const double tSmall=16;
const double tMedium=20;
const double tLarge=20;



List boxColors = [yellowLight,blackLight];
List textColors = [blackDark,yellowDark];

const spinkit = SpinKitRotatingCircle(
color: yellowDark,
size: 50.0,
);

myStyle(double size,[Color ?clr,FontWeight ?fw]){
  return GoogleFonts.roboto(
    fontSize: size,
    color: clr,
    fontWeight: fw
  );
}


showInToast(String text){
    return Fluttertoast.showToast(
        msg: "$text",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: blackCLr,
        textColor: yellowDark,
        fontSize: 20.0
    );
}
String? parseHtmlString(String htmlString) {
  final document = parse(htmlString);
  final String? parsedString =
      parse(document.body?.text).documentElement?.text;

  return parsedString;
}

List imageList=[
    "https://apis.mysundaynotes.com/apis/categories/1-Chronicles.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Corinthians.png",
    "https://apis.mysundaynotes.com/apis/categories/1-John.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Kings.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Peter.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Samuel.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Timothy.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Chronicles.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Corinthians.png",
    "https://apis.mysundaynotes.com/apis/categories/2-John.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Kings.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Peter.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Samuel.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Thessalonians.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Timothy.png",
    "https://apis.mysundaynotes.com/apis/categories/3-John.png",
    "https://apis.mysundaynotes.com/apis/categories/Acts.png",
    "https://apis.mysundaynotes.com/apis/categories/Amos.png",
    "https://apis.mysundaynotes.com/apis/categories/Colossians.png",
    "https://apis.mysundaynotes.com/apis/categories/Daniel.png",
    "https://apis.mysundaynotes.com/apis/categories/Deuteronomy.png",
    "https://apis.mysundaynotes.com/apis/categories/Ecclesiastes.png",
    "https://apis.mysundaynotes.com/apis/categories/Ephesians.png",
    "https://apis.mysundaynotes.com/apis/categories/Esther.png",
    "https://apis.mysundaynotes.com/apis/categories/Exodus.png",
    "https://apis.mysundaynotes.com/apis/categories/Ezekiel.png",
    "https://apis.mysundaynotes.com/apis/categories/Ezra.png",
    "https://apis.mysundaynotes.com/apis/categories/Galatians.png",
    "https://apis.mysundaynotes.com/apis/categories/Genesis.png",
    "https://apis.mysundaynotes.com/apis/categories/Habakkuk.png",
    "https://apis.mysundaynotes.com/apis/categories/Haggai.png",
    "https://apis.mysundaynotes.com/apis/categories/Hebrews.png",
    "https://apis.mysundaynotes.com/apis/categories/Hosea.png",
    "https://apis.mysundaynotes.com/apis/categories/Isaiah.png",
    "https://apis.mysundaynotes.com/apis/categories/James.png",
    "https://apis.mysundaynotes.com/apis/categories/Jeremiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Job.png",
    "https://apis.mysundaynotes.com/apis/categories/Joel.png",
    "https://apis.mysundaynotes.com/apis/categories/John.png",
    "https://apis.mysundaynotes.com/apis/categories/Jonah.png",
    "https://apis.mysundaynotes.com/apis/categories/Joshua.png",
    "https://apis.mysundaynotes.com/apis/categories/Jude.png",
    "https://apis.mysundaynotes.com/apis/categories/Judges.png",
    "https://apis.mysundaynotes.com/apis/categories/Lamentations.png",
    "https://apis.mysundaynotes.com/apis/categories/Leviticus.png",
    "https://apis.mysundaynotes.com/apis/categories/Luke.png",
    "https://apis.mysundaynotes.com/apis/categories/Malachi.png",
    "https://apis.mysundaynotes.com/apis/categories/Mark.png",
    "https://apis.mysundaynotes.com/apis/categories/Matthew.png",
    "https://apis.mysundaynotes.com/apis/categories/Micah.png",
    "https://apis.mysundaynotes.com/apis/categories/Nahum.png",
    "https://apis.mysundaynotes.com/apis/categories/Nehemiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Numbers.png",
    "https://apis.mysundaynotes.com/apis/categories/Obadiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Philemon.png",
    "https://apis.mysundaynotes.com/apis/categories/Philippians.png",
    "https://apis.mysundaynotes.com/apis/categories/Proverbs.png",
    "https://apis.mysundaynotes.com/apis/categories/Psalms.png",
    "https://apis.mysundaynotes.com/apis/categories/Romans.png",
  "https://apis.mysundaynotes.com/apis/categories/Ruth.png"
  "https://apis.mysundaynotes.com/apis/categories/Song-of-Solomon.png"
  "https://apis.mysundaynotes.com/apis/categories/Zephaniah.png"
  "https://apis.mysundaynotes.com/apis/categories/Zechariah.png"
  "https://apis.mysundaynotes.com/apis/categories/Titus.png"
];




List newList=[
    "https://apis.mysundaynotes.com/apis/categories/Acts.png",
    "https://apis.mysundaynotes.com/apis/categories/Colossians.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Corinthians.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Corinthians.png",
    "https://apis.mysundaynotes.com/apis/categories/Ephesians.png",
    "https://apis.mysundaynotes.com/apis/categories/Galatians.png",
    "https://apis.mysundaynotes.com/apis/categories/Hebrews.png",
    "https://apis.mysundaynotes.com/apis/categories/James.png",
    "https://apis.mysundaynotes.com/apis/categories/John.png",
    "https://apis.mysundaynotes.com/apis/categories/Jude.png",
    "https://apis.mysundaynotes.com/apis/categories/Luke.png",
    "https://apis.mysundaynotes.com/apis/categories/Mark.png",
    "https://apis.mysundaynotes.com/apis/categories/Matthew.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Peter.png",
    "https://apis.mysundaynotes.com/apis/categories/Philemon.png",
    "https://apis.mysundaynotes.com/apis/categories/Philippians.png",
    "https://apis.mysundaynotes.com/apis/categories/Revelation.png",
    "https://apis.mysundaynotes.com/apis/categories/Romans.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Timothy.png",
    "https://apis.mysundaynotes.com/apis/categories/Titus.png"


];
List oldList=[
    "https://apis.mysundaynotes.com/apis/categories/1-John.png",
    "https://apis.mysundaynotes.com/apis/categories/Amos.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Chronicles.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Chronicles.png",
    "https://apis.mysundaynotes.com/apis/categories/Daniel.png",
    "https://apis.mysundaynotes.com/apis/categories/Deuteronomy.png",
    "https://apis.mysundaynotes.com/apis/categories/Ecclesiastes.png",
    "https://apis.mysundaynotes.com/apis/categories/Esther.png",
    "https://apis.mysundaynotes.com/apis/categories/Exodus.png",
    "https://apis.mysundaynotes.com/apis/categories/Ezekiel.png",
    "https://apis.mysundaynotes.com/apis/categories/Ezra.png",
    "https://apis.mysundaynotes.com/apis/categories/Genesis.png",
    "https://apis.mysundaynotes.com/apis/categories/Habakkuk.png",
    "https://apis.mysundaynotes.com/apis/categories/Haggai.png",
    "https://apis.mysundaynotes.com/apis/categories/Hosea.png",
    "https://apis.mysundaynotes.com/apis/categories/Isaiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Jeremiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Job.png",
    "https://apis.mysundaynotes.com/apis/categories/Joel.png",
    "https://apis.mysundaynotes.com/apis/categories/Jonah.png",
    "https://apis.mysundaynotes.com/apis/categories/Joshua.png",
    "https://apis.mysundaynotes.com/apis/categories/Judges.png",
    "https://apis.mysundaynotes.com/apis/categories/1-Kings.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Kings.png",
    "https://apis.mysundaynotes.com/apis/categories/Lamentations.png",
    "https://apis.mysundaynotes.com/apis/categories/Leviticus.png",
    "https://apis.mysundaynotes.com/apis/categories/Malachi.png",
    "https://apis.mysundaynotes.com/apis/categories/Micah.png",
    "https://apis.mysundaynotes.com/apis/categories/Nahum.png",
    "https://apis.mysundaynotes.com/apis/categories/Nehemiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Numbers.png",
    "https://apis.mysundaynotes.com/apis/categories/Obadiah.png",
    "https://apis.mysundaynotes.com/apis/categories/Proverbs.png",
    "https://apis.mysundaynotes.com/apis/categories/Psalms.png",
    "https://apis.mysundaynotes.com/apis/categories/Psalms.png",
    "https://apis.mysundaynotes.com/apis/categories/Psalms.png",
    "https://apis.mysundaynotes.com/apis/categories/Ruth.png"
 "https://apis.mysundaynotes.com/apis/categories/1-Samuel.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Samuel.png",
    "https://apis.mysundaynotes.com/apis/categories/Song-of-Solomon.png"
        "https://apis.mysundaynotes.com/apis/categories/Zechariah.png"
        "https://apis.mysundaynotes.com/apis/categories/Zephaniah.png"



 /*   "https://apis.mysundaynotes.com/apis/categories/2-John.png",
    "https://apis.mysundaynotes.com/apis/categories/2-Peter.png",


    "https://apis.mysundaynotes.com/apis/categories/3-John.png",

*/











];