

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'authcodefile.dart';

void main() {
  runApp(const authcodeapp());
}

class authcodeapp extends StatefulWidget {
  const authcodeapp({Key? key}) : super(key: key);

  @override
  _authcodeappState createState() => _authcodeappState();
}

class _authcodeappState extends State<authcodeapp> {
  bool isLoading = false;
  bool darkMode = false;

  AuthButtonType? buttonType;
  AuthIconType? iconType;

  ThemeMode get themeMode => darkMode ? ThemeMode.dark : ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    const String appName = 'Auth Buttons ';
    return MaterialApp(
      title: appName,
      themeMode: themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appName),
          actions: [
            Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _chooseButtonType(),
                  _chooseIconType(),
                  const SizedBox(height: 24),
                  GoogleAuthButton(
                    onPressed: () {
                      // your implementation
                      setState(() {
                        isLoading = !isLoading;
                      });
                    },
                    themeMode: themeMode,
                    isLoading: isLoading,
                    style: AuthButtonStyle(
                      buttonType: buttonType,
                      iconType: iconType,
                      margin: const EdgeInsets.only(bottom: 18),
                    ),
                  ),
                  AuthButtonGroup(
                    style: AuthButtonStyle(
                      width: 185,
                      height: 38,
                      progressIndicatorType: AuthIndicatorType.linear,
                      buttonType: buttonType,
                    ),
                    buttons: [
                      GoogleAuthButton(
                        onPressed: () {
                          // your implementation
                          setState(() {
                            isLoading = !isLoading;
                          });
                        },
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      AppleAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      FacebookAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      GithubAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      MicrosoftAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      TwitterAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      EmailAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),
                      HuaweiAuthButton(
                        onPressed: () {},
                        themeMode: themeMode,
                        isLoading: isLoading,
                        style: AuthButtonStyle(
                          buttonType: buttonType,
                          iconType: iconType,
                        ),
                      ),




]

    )

                ],
              ),


            ),
          ],
        ),

      ),
    );
  }

  Widget _chooseButtonType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Auth Button Types',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('default'),
                  Radio<AuthButtonType?>(
                    value: null,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                  const Text('secondary'),
                  Radio<AuthButtonType>(
                    value: AuthButtonType.secondary,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                  const Text('icon'),
                  Radio<AuthButtonType>(
                    value: AuthButtonType.icon,
                    groupValue: buttonType,
                    onChanged: (AuthButtonType? value) {
                      setState(() {
                        buttonType = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chooseIconType() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Auth Icon Types',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('default'),
                  Radio<AuthIconType?>(
                    value: null,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                  const Text('outlined'),
                  Radio<AuthIconType?>(
                    value: AuthIconType.outlined,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                  const Text('secondary'),
                  Radio<AuthIconType?>(
                    value: AuthIconType.secondary,
                    groupValue: iconType,
                    onChanged: (AuthIconType? value) {
                      setState(() {
                        iconType = value;
                      });
                    },
                  ),
                ],

              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){
                   Get.to(authcodefile());
                  }, child: Text("Source code"))
                ],
              )
            ],
          ),
        ],

      ),
    );
  }
}