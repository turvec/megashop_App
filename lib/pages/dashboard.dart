import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  'Mega Mall',
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(width: 18,),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(
    //       'Mega Mall',
    //        style: TextStyle(
    //         color: Colors.blue.shade700,
    //         fontSize: 20,
    //         fontWeight: FontWeight.bold
    //         ),
    //       ),
    //     backgroundColor: Colors.white,
    //     centerTitle: true,
    //     elevation: 0.5,
    //     actions: [
    //       Icon(
    //         Icons.notifications_outlined,
    //         color: Colors.black,
    //         size: 20,
    //       ),
    //       SizedBox(width: 18,),
    //       Icon(
    //         Icons.shopping_cart_outlined,
    //         color: Colors.black,
    //         size: 20,
    //       ),
    //     ],
    //   ),
    // );
  }
}