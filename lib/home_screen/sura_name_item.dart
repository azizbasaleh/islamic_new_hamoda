import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:review_islamic_mahammed_hamooda/my_theme.dart';
import 'package:review_islamic_mahammed_hamooda/sura_details/sura_details.dart';

class SuraNameItems extends StatelessWidget {
  String name;
  int index;

  SuraNameItems(this.name, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routName,
            //نبعت اسم السورة بإستخدام argment
            arguments: SuraNameDetailsArgs(name, index));
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: MyThemeData.colorBlack),
      ),
    );
  }
}
