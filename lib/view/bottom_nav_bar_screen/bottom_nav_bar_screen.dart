import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix/view/download_screen/download_screen.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/view/more_screen/more_screen.dart';
import 'package:netflix/view/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectindex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstants.mainBlack,
          selectedItemColor: ColorConstants.mainWhite,
          unselectedItemColor: ColorConstants.grey,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          useLegacyColorScheme: false,
          currentIndex: selectindex,
          onTap: (value) {
            selectindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: "Coming soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More")
          ]),
    );
  }
}
