import 'package:flutter/material.dart';
import 'package:review_islamic_mahammed_hamooda/moshaf_screen.dart';
import 'package:review_islamic_mahammed_hamooda/my_theme.dart';
import 'package:review_islamic_mahammed_hamooda/quran_screen.dart';
import 'package:review_islamic_mahammed_hamooda/radio_screen.dart';
import 'package:review_islamic_mahammed_hamooda/sebha_screen.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //add common for devlopment
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg3.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'Islamic',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: MyThemeData.colorGold,
            selectedItemColor: MyThemeData.colorBlack,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/quran-quran-svgrepo-com.png'),
                  size: 30,
                ),
                label: 'quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/sebha_blue.png'),
                  size: 30,
                ),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/radio_blue.png'),
                  size: 30,
                ),
                label: 'Radio',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/moshaf_blue.png'),
                  size: 30,
                ),
                label: 'Moshaf',
              ),
            ],
          ),
          body: screens[currentIndex],
        ),
      ],
    );
  }

  List<Widget> screens = [
    QuranScreen(),
    SebhaScreen(),
    RadioScreen(),
    MoshafScreen(),
  ];
}
