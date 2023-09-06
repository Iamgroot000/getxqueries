


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxqueries/getxqueries.dart';


class flutterspeeddial extends StatelessWidget {
  const flutterspeeddial({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // home: snackbar(),
    );
  }

}
class speeddialcode extends StatefulWidget {
  const speeddialcode({super.key});

  @override
  State<speeddialcode> createState() => _speeddialcodeState();
}

class _speeddialcodeState extends State<speeddialcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Speed Dial'),
        ),
        body: Container(

          height: double.infinity,
          width: double.infinity,
          //color: Colors.grey,
          child: SingleChildScrollView(
            child: Text( '''
        
        /// Please add flutter_speed_dial  plugin in your pubspec.yaml file
        
  

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
		onTap: () => print('Pressed Code'),
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
		title: Text('Geeks for Geeks'),
		backgroundColor: Colors.green,
		),
		body: SafeArea(
		child: Center(
			child: Text(
			'Welcome to GFG!',
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
   '''),
          ) ,));
  }
}