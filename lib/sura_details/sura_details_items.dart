import 'package:flutter/material.dart';
import 'package:review_islamic_mahammed_hamooda/my_theme.dart';

class SuraDetailsItem extends StatelessWidget {
  String ayaa;

  SuraDetailsItem(this.ayaa);

  @override
  Widget build(BuildContext context) {
    return Text(
      ayaa,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
          fontSize: 20, color: MyThemeData.colorBlack, letterSpacing: .65),
    );
  }
}
