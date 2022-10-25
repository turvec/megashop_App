import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Container(
    //     child: Column(
    //       children: [
    //         Container(
    //           padding: EdgeInsets.all(20),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //               'Mega Mall',
    //               style: TextStyle(
    //                 color: Colors.blue.shade700,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold
    //                 ),
    //               ),
    //               Row(
    //                 children: [
    //                   Icon(
    //                     Icons.notifications_outlined,
    //                     color: Colors.black,
    //                     size: 20,
    //                   ),
    //                   SizedBox(width: 18,),
    //                   Icon(
    //                     Icons.shopping_cart_outlined,
    //                     color: Colors.black,
    //                     size: 20,
    //                   ),
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Column(
              children: [
                Form(child: TextFormField()),
                Container(
                  width: 400,
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ListContainer('Awfa'),
                      ListContainer('dey'),
                      ListContainer('you sure'),
                      ListContainer('I sure na'),
                      ListContainer('Ok na'),
                    ],
                  )
                ),
                Row()
            ]),
          ),
        ));
  }
}

Container ListContainer(String title){
  return Container(
    height: 200,
    width: 300,
    padding: EdgeInsets.all(50),
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
  );
}