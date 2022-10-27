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

    return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Form(child: TextFormField()),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 450,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ListContainer('assets/images/carousel-1.png'),
                      ListContainer('assets/images/blue-bg-cable.png'),
                      ListContainer('assets/images/green-bg-cable.png'),
                    ],
              )),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category', style: TextStyle(color: Colors.black, fontSize: 20)),
                  Text('see all', style: TextStyle(color: Colors.blue,))
                ],
              )
            ]),
          ),
        );
  }
}

Container ListContainer(String imageName) {
  return Container(
    height: 150,
    width: 400,
    padding: EdgeInsets.all(50),
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageName),
          fit: BoxFit.contain
        )
    ),
  );
}
