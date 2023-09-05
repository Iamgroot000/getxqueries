import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

///SNACKBAR METHOD- YOU CAN USE IT ANYWHERE IN THE PROGRAM
Container SNACKBARMETHOD() {
  return Container(
    child: OutlinedButton(
      child: Text(' Snackbar'),
      onPressed: (){
        ///Get,snackbar is used for snackbar query in getX
        Get.snackbar('Hi i am groot', 'Guardian of galaxy',snackPosition: SnackPosition.BOTTOM);
      },
    ),

  );

}

/// METHOD FOR DEFAULTDILAOG
OutlinedButton defaultdialog() {
  return OutlinedButton(
    child:    Text(' Dialog Box'),
    onPressed: (){
      ///Get.defaultDialog is used for snackbar query in getX
      Get.defaultDialog(
          title: 'Life and Death in one breath',
          middleText: 'Groot today quote'

      );
    },);
}

/// BOTTOMAHEET METHODS
OutlinedButton bottomsheet() {
  return OutlinedButton(
    child: Text('Bottom Sheet'),
    onPressed: (){

      Get.bottomSheet(
        Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.transparent,
            child:Column(
              children: [
                Text('I am Groot', textScaleFactor: 2),
                // Text('',  textScaleFactor: 2),
                // Text('Hii 3',  textScaleFactor: 2),
                // Text('Hii 4',  textScaleFactor: 2),
              ],
            )
        ),
        barrierColor: Colors.red[50],
        isDismissible: false,
      );
    },

  );
}

