import 'package:flutter/material.dart';
import 'package:review_islamic_mahammed_hamooda/home.dart';
import 'package:review_islamic_mahammed_hamooda/my_theme.dart';
import 'package:review_islamic_mahammed_hamooda/sura_details/sura_details.dart';

void main() {
  runApp( MyApplication());
}

class MyApplication extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
