


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxqueries/getxqueries.dart';
import 'package:getxqueries/widgets%20methods/widgetsMethods.dart';




class fluttericon extends StatelessWidget {
  const fluttericon({super.key});


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
class fluttericonadd extends StatefulWidget {
  const fluttericonadd({super.key});

  @override
  State<fluttericonadd> createState() => _fluttericonaddState();
}

class _fluttericonaddState extends State<fluttericonadd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Change your App icon'),
          backgroundColor: Colors.green,
        ),


        body:
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),

                      // height: 150,
                      // width: 400,
                      //color: Colors.grey,
                      child: SingleChildScrollView(

                        child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
              //color: Colors.green,

              ),

              ),
                    child: Text('''  
                    1. Go to Pub dev_dependencies and add
                       flutter_launcher_icons: in pubspec.yaml file 
                    2. Now create assets folder -> create icon folder ->
                       add icon.png file 
                    Note: If you are not having a .png image, -
                      then change the image format
                    3. Open the Terminal -
                       flutter pub get- run this command
                    4.After the command is executed successfully then run-
                      flutter pub run flutter_launcher_icons
                    5. After both the commands are executed successfully 
                       then go
                       to lib/main.dart file and run the app
                       flutter run
                    '''
                        ),

              ),),),
              Column(
                children: [
                  ElevatedButton(onPressed: (){
                    Get.bottomSheet(
                      Container(
                        // height: double.infinity,
                        //  width: double.infinity,
                        color: Colors.blueGrey,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,

                          child:Column(
                            children: [
                              Text( '''
name: getxqueries
description: A new Flutter project.
# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number is used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# In Windows, build-name is used as the major, minor, and patch parts
# of the product and file versions while build-number is used as the build suffix.
version: 1.0.0+1

environment:
  sdk: '>=3.0.6 <4.0.0'

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
# consider running `flutter pub upgrade --major-versions`. Alternatively,
# dependencies can be manually updated by changing the version numbers below to
# the latest version available on pub.dev. To see which dependencies have newer
# versions available, run `flutter pub outdated`.
dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  get: ^4.6.5
  flutter_onboarding_slider: ^1.0.10
  group_grid_view: ^1.0.1
  flexible_grid_view: ^0.0.2
  flutter_advanced_drawer: ^1.3.5

  flutter_switch: ^0.3.2
  lottie: ^2.6.0
  side_navigation: ^1.0.4
  image_picker: ^1.0.4
  flutter_speed_dial: ^7.0.0



dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_launcher_icons: ^0.13.1

flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/getx2.jpg"


  # The "flutter_lints" package below contains a set of recommended lints to
  # encourage good coding practices. The lint set provided by the package is
  # activated in the `analysis_options.yaml` file located at the root of your
  # package. See that file for information about deactivating specific lint
  # rules and activating additional ones.
  flutter_lints: ^2.0.0

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - assets/
  # assets:
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/assets-and-images/#resolution-aware

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/assets-and-images/#from-packages

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/custom-fonts/#from-packages

                                 ''' )
                            ],
                          )
                      ),
                      //barrierColor: Colors.red[50],
                      //isDismissible: false,
                      ) );
                  }, child: Text("Your pubspec.yaml file should look like"))
                ],
              )
            ],

          ),


    );




  }
}
