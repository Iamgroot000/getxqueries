import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'fabspeeddialcode.dart';


class MyfabApp extends StatelessWidget {
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 28.0),
      backgroundColor: Colors.green[900],
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: Icon(Icons.chrome_reader_mode, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed Read Later'),
          label: 'Read',
          labelStyle:
          TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.create, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed Write'),
          label: 'Write',
          labelStyle:
          TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.laptop_chromebook, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () {
            Get.to(speeddialcode ());
          },
          label: 'Code',
          labelStyle:
          TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Speed Dial'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              'Flutter Speed Dial!',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        floatingActionButton: buildSpeedDial(),
      ),
    );
  }
}
