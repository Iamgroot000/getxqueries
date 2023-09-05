
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxqueries/sidedrawer.dart';
import 'package:getxqueries/widgets%20methods/widgetsMethods.dart';

import 'animation.dart';
import 'grootdictionary.dart';

void main() {
  runApp(const snackbar());
}


class MyApp extends StatelessWidget {
  bool status = false; // Initialize the status variable with a default value

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Scaffold demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      ///It will show in your main screen
      home: snackbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class snackbar extends StatefulWidget {
  const snackbar({super.key});

  @override
  State<snackbar> createState() => _snackbarState();
}

class _snackbarState extends State<snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {

          },
          child: Icon(Icons.menu),
        ),
        title: Text("I am Groot"),
        actions: [
          Icon(Icons.grass)
        ],
        backgroundColor: Colors.green,
      ),
      body: Column(

        children: [
          SizedBox(height: 13,),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SNACKBARMETHOD(),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      defaultdialog(),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      OutlinedButton(
                        child: Text('Next'),
                        onPressed: () {
                          Get.to(grootdictionary());
                        },
                      ),
                      SizedBox(width: 5,),
                      bottomsheet(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Use Expanded for the remaining screen space
          SizedBox(height: 20,),
          Expanded(
    child:
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
      color: Colors.green,
         // width: 10,
        )),
    height: 700,
    width: 400,
    //color: Colors.grey,
    child:Column(
    children: [
    Expanded(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // Adjust the number of columns as needed
        ),
        children: [
            InkWell(
              onTap: (){

              },
              child: Container(
                decoration:BoxDecoration(
                 // color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      spreadRadius: 2, // Spread radius
                      //blurRadius: 5, // Blur radius
                      offset: Offset(0, 2), // Offset (horizontal and vertical)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),

                ),
                
                    
              ),
            ),
          Container(
              decoration:BoxDecoration(
               // color: Colors.teal,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    spreadRadius: 2, // Spread radius
                    //blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Offset (horizontal and vertical)
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              )
          ),
          Container(
              decoration:BoxDecoration(
                //color: Colors.teal,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    spreadRadius: 2, // Spread radius
                   // blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Offset (horizontal and vertical)
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              )
          ),
          Container(
              decoration:BoxDecoration(
               // color: Colors.teal,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    spreadRadius: 2, // Spread radius
                   // blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Offset (horizontal and vertical)
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              )
          ),
          Container(
              decoration:BoxDecoration(
               // color: Colors.teal,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    spreadRadius: 2, // Spread radius
                   // blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Offset (horizontal and vertical)
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              )
          ),
          Container(
              decoration:BoxDecoration(
               // color: Colors.teal,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    spreadRadius: 2, // Spread radius
                   // blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Offset (horizontal and vertical)
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              )
          ),
                ],
       
      ),
    ),

    ),

    ]),
    ),),
        SizedBox(height: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: OutlinedButton(
                child: Text('Animation for you'),
                onPressed: (){
                  Get.to(LottiePage());
    }
              )

        )
        ],


      ),
]
              ));

  }
}



