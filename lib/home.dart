

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  //add common for devlopment

  static const String routeName='home';

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
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: Colors.brown,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                  label: '',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add, color: Colors.green), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add, color: Colors.green), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add, color: Colors.green), label: '')
            ],
          ),
        ),
      ],
    );
  }
}
