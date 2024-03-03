import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_sunday_notes_v2/provider/home_provider.dart';
import 'package:my_sunday_notes_v2/screen/author_sod_page.dart';
import 'package:my_sunday_notes_v2/screen/drawer/custom_drawer.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/categories_page.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/find_church.dart';
import 'package:my_sunday_notes_v2/screen/sod_details_page.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
/*
  bool isLoading = false;

  loadSODData() async {
    setState(() {
      isLoading = true;
    });
    await Provider.of<HomeProvider>(context, listen: false).getSODData(
      15,
    );
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
    //await CustomHttpRequest.loadSODData(20, 1);
  }

  loadAllChurchData() async {
    await Provider.of<HomeProvider>(context, listen: false).getAllChurchData(
      20,
    );
    */
/*await Provider.of<HomeProvider>(context, listen: false)
        .loadDrawerCategories();*/ /*

  }

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.maxScrollExtent == controller.offset) {
        Provider.of<HomeProvider>(context, listen: false).incrementSOD();
        */
/*setState(() {
          pageNo= pageNo+1;
        });*/ /*

        loadSODData();
      }
    });
    super.initState();
  }
*/

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2),(){
      isAnimation=true;
    });
    super.initState();
  }
  bool isAnimation =false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var sodData = Provider.of<HomeProvider>(context).allSODData;
    var churchList = Provider.of<HomeProvider>(context).allChurchList;
    // var drawerList = Provider.of<HomeProvider>(context).sidebarCats;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: CustomDrawer(),
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

          Visibility(
            visible: isAnimation=true,
            child: Stack(
                          children: [
            // Implement the stroke
            RotationTransition(
              turns: AlwaysStoppedAnimation(-7 / 360),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'I am coming soon',
                  style: GoogleFonts.roboto(
                    fontSize:100,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 8
                      ..color = Colors.black,
                  ),
                ),
              ),
            ),
            // The text inside
            RotationTransition(
              turns: AlwaysStoppedAnimation(-7 / 360),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'I am coming soon',
                  style: GoogleFonts.roboto(
                    fontSize:100,
                    color: iconClr,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
                          ],
                        ),
          ),
          SizedBox(height: 10),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText("Jesus Christ",
                    textStyle: GoogleFonts.roboto(
                        fontSize: 50,

                        color: Color(0xffEDDBB1),

                        shadows: [



                          Shadow( // topLeft
                              offset: Offset(-0.5, 0.5),
                              color: iconClr
                          ),
                        ]
                        ),

                ),
              ],
              repeatForever: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
          SizedBox(height: 100),
                      ],
                    ),
        ),

        /* body: Container(
          padding: EdgeInsets.symmetric(horizontal: bodyPadding),
          width: double.infinity,
          child: sodData.isNotEmpty
              ? SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  _scaffoldKey.currentState!.openDrawer();
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: yellowDark,
                                  size: 30,
                                )),
                            SizedBox(
                              width: 100,
                            ),
                            Image.asset("assets/app_logo.png"),
                          ],
                        ),
                      ),
                      Divider(
                        color: yellowDark,
                        thickness: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        child: Text(
                          "Today's Scripture of the Day",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SODDetailsPage(
                                    sodModel: sodData[0],
                                    allObjects: sodData,
                                  )));
                        },
                        child: Container(
                          width: double.infinity,
                          child: Image(
                            image: NetworkImage("${sodData[0].guid}"),
                            fit: BoxFit.fill,
                            height: 120,
                            errorBuilder: (context, exception, stackTrack) =>
                                Image(
                              image: AssetImage('assets/placeholder.png'),
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: yellowDark,
                        thickness: 1.5,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategoriesPage(id: 1)));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: RichText(
                            text: TextSpan(
                              text: 'bible ',
                              style: TextStyle(
                                  inherit: true,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w800,
                                  color: yellowDark,
                                  shadows: [
                                    Shadow( // bottomLeft
                                        offset: Offset(-1.5, -1.5),
                                        color: blackLight
                                    ),
                                    Shadow( // bottomRight
                                        offset: Offset(1.5, -1.5),
                                        color: blackLight
                                    ),
                                    Shadow( // topRight
                                        offset: Offset(1.5, 1.5),
                                        color: blackLight
                                    ),
                                    Shadow( // topLeft
                                        offset: Offset(-1.5, 1.5),
                                        color: blackLight
                                    ),
                                  ]
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Scriptures',
                                style: TextStyle(
                                inherit: true,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w800,
                                color: yellowDark,
                                shadows: [
                                  Shadow( // bottomLeft
                                      offset: Offset(-1.5, -1.5),
                                      color: blackLight
                                  ),
                                  Shadow( // bottomRight
                                      offset: Offset(1.5, -1.5),
                                      color: blackLight
                                  ),
                                  Shadow( // topRight
                                      offset: Offset(1.5, 1.5),
                                      color: blackLight
                                  ),
                                  Shadow( // topLeft
                                      offset: Offset(-1.5, 1.5),
                                      color: blackLight
                                  ),
                                ]
                            ),),
                              ],
                            ),
                          ),
                          height: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/homebg.png",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      churchList.isNotEmpty
                          ? Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 200,
                              width: double.infinity,
                              color: yellowLight,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 6),
                                    child: Text(
                                      "Find Church & Pastor",
                                      style: myStyle(22, blackDark,FontWeight.w800),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    padding: EdgeInsets.only(left: 4),

                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: 5,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    AuthorSodPage(
                                                                      id: int.parse(
                                                                          churchList[index]
                                                                              .id
                                                                              .toString()),
                                                                      title: churchList[
                                                                              index]
                                                                          .firstname,
                                                                    )));
                                                  },
                                                  child: Card(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16 )
                                                    ),
                                                     color: blackLight,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 35,
                                                            child: ClipRRect(
                                                              child: Container(
                                                                  child: Image.network(
                                                                      churchList[
                                                                              index]
                                                                          .avatar_thumb
                                                                          .toString())),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            "${churchList[index].firstname ?? ""}",
                                                            maxLines: 2,
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: myStyle(16,yellowDark,FontWeight.w700)
                                                          ),
                                                         */ /* Text(
                                                            "${churchList[index].bio ?? ""}",
                                                            maxLines: 2,
                                                            textAlign:
                                                                TextAlign.center,
                                                         style: myStyle(16,grayClr, )
                                                          ),*/ /*
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          FindChurchPage()));
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.arrow_forward,
                                                  size: 44,
                                                  color: blackDark,
                                                ),
                                                Text("See all")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : SizedBox(
                              height: 10,
                            ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: blackLight,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Most recent sods",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: sodData.length,
                          itemBuilder: (context, index) {
                            DateTime postDateTime =
                                DateTime.parse(sodData[index].post_date!);
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SODDetailsPage(
                                          sodModel: sodData[index],
                                          allObjects: sodData,
                                        )));
                              },
                              child: Container(
                                color: boxColors[index % boxColors.length],
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: MediaQuery.of(context).size.width *
                                          0.30,
                                      child: Image(
                                        image: NetworkImage(
                                            sodData[index].guid.toString()),
                                        fit: BoxFit.fill,
                                        errorBuilder:
                                            (context, exception, stackTrack) =>
                                                Image(
                                          image: AssetImage(
                                              'assets/placeholder.png'),
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(left: 4, right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                sodData[index]
                                                    .post_title
                                                    .toString(),
                                                style: myStyle(
                                                    18,
                                                    textColors[index %
                                                        textColors.length],
                                                    FontWeight.bold)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              parseHtmlString(sodData[index]
                                                  .post_content
                                                  .toString())!,
                                              style: myStyle(
                                                  16,
                                                  textColors[index %
                                                      textColors.length],
                                                  FontWeight.w500),
                                              maxLines: 2,
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              "" +
                                                  postDateTime.month
                                                      .toString() +
                                                  "-" +
                                                  postDateTime.day.toString() +
                                                  "-" +
                                                  postDateTime.year.toString(),
                                              style: TextStyle(
                                                color: textColors[
                                                    index % textColors.length],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                      isLoading
                          ? Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: spinkit,
                            )
                          : SizedBox(
                              height: MediaQuery.of(context).size.height * 0.20,
                            )
                    ],
                  ),
                )
              : spinkit,
        ),*/
      ),
    );
  }
}
