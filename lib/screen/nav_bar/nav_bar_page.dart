import 'package:flutter/material.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/categories_page.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/home_page.dart';
import 'package:my_sunday_notes_v2/screen/nav_bar/privacy_policy.dart';
import 'package:my_sunday_notes_v2/widget/widget.dart';

import '../../new_screen/topics_screen.dart';

class NavBarPage extends StatefulWidget {

  const NavBarPage({Key? key}) : super(key: key);

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int selectedItem = 1;
  PageController pageController = PageController(initialPage: 1);
  List<Widget> pages = [
    HomePage(),
    CategoriesPage(id: 1),
    TopicsScreen(),
    PrivacyPolicy()
  ];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }


  @override
  void initState() {
   // loadDrawer();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: pages,

        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: SizedBox(

        height: MediaQuery.of(context).size.height * 0.15,
        child: BottomAppBar(

          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Divider(
                color: yellowDark,
                thickness: 2.5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedItem = 0;
                        pageController.jumpToPage(selectedItem);
                      });
                    },
                    child: Image.asset(
                      "assets/Home-Icon.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedItem = 1;
                        pageController.jumpToPage(selectedItem);
                      });
                    },
                    child: Image.asset(
                      "assets/Bible-Icon.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedItem = 2;
                        pageController.jumpToPage(selectedItem);
                      });
                    },
                   child: Image.asset(
                    "assets/topics_icon.png",
                    height: 30,
                    width: 30,
                  ), ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedItem = 3;
                        pageController.jumpToPage(selectedItem);
                      });
                    },
                    child: Image.asset(
                      "assets/privacy_icon.png",
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
