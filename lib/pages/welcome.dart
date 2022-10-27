import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dashboard.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Welcome extends StatefulWidget {

  const Welcome({ Key? key }) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  List<Widget> pages = [
    Dashboard(),
    Container(
      child: Center(child: Text('Page 2')),
    ),
    Container(
      child: Center(child: Text('Page 3')),
    ),
    Container(
      child: Center(child: Text('Page 4')),
    ),
  ];

  int index = 0;

  void changeIndex(_index){
    setState(() {
      index = _index;
    });
  }

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
          title: Text(
            'Mega Mall',
            style: TextStyle(
                color: Colors.blue.shade700,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.5,
          actions: [
            Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(
              width: 18,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
        body: pages[index],
        bottomNavigationBar: SnakeNavigationBar.color(
          onTap: changeIndex,
          currentIndex: index,
          showSelectedLabels: true,
          elevation: 10,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: Colors.black),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'balance'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'history'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
          ],
        ),
      );
  }
}