//class

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:review_islamic_mahammed_hamooda/my_theme.dart';
import 'package:review_islamic_mahammed_hamooda/sura_details/sura_details_items.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'SuraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/bg3.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            args.Suraname,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                separatorBuilder: (context, index) => Divider(
                      color: MyThemeData.colorGold,
                      endIndent: 40,
                      indent: 40,
                    ),
                itemCount: verses.length,
                itemBuilder: (context, index) {
                  return SuraDetailsItem(verses[index]);
                }),
      ),
    ]);
  }

  //طريقة استدعاء السور function
  void loadFile(int index) async {
    //index اسم الملف بالارقام
    var content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraNameDetailsArgs {
  String Suraname;
  int index;
  SuraNameDetailsArgs(this.Suraname, this.index);
}
