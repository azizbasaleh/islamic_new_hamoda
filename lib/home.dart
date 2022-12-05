

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  //add common for devlopment

  static const String routeName='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Islamic'),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.green,),label: '',backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.green),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.green),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add,color: Colors.green),label: '')
        ],
      ),
    );
  }
}
