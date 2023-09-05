

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'getxqueries.dart';

class grootdictionary extends StatefulWidget {
  const grootdictionary({super.key});

  @override
  State<grootdictionary> createState() => _grootdictionaryState();
}

class _grootdictionaryState extends State<grootdictionary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groot DIctionary'),
      ),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            child: TextFormField(
      decoration: InputDecoration(
        labelText: 'Label Text', // Optional label for the input field
        hintText: 'Hint Text',   // Optional hint text shown when the field is empty
        prefixIcon: Icon(Icons.person), // Optional prefix icon
        suffixIcon: Icon(Icons.clear),  // Optional suffix icon
        border: OutlineInputBorder(),

            ),


            )
          ),
          SizedBox(height: 18,),
          OutlinedButton(
            child: Text('GO Back dude'),
            onPressed: (){
              Get.to(snackbar());
            },
          ),

        ]),

    );


  }
}
