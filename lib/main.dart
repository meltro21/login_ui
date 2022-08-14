import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    var statusBarHeight = MediaQuery.of(context).padding.top;
    mediaHeight = mediaHeight - statusBarHeight;
    if (mediaHeight < 300) {
      mediaHeight = 300;
    }
    if (mediaWidth > 500) {
      mediaWidth = 500;
    }

    print('height is $mediaHeight');

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffC7C5F4), Color(0xff776BCC)])),
          height: mediaHeight,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff5D54A4), Color(0xff7C78B8)])),
              height: mediaHeight,
              width: mediaWidth,
              child: Stack(children: [
                //Shape 4
                Positioned(
                  top: mediaHeight * 0.7,
                  right: mediaWidth * 0.13,
                  child: Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      height: mediaHeight * 0.7,
                      width: mediaWidth * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: const Color(0xff7E7BB9),
                      ),
                    ),
                  ),
                ),
                //Shape 3
                Positioned(
                  top: -mediaHeight * 0.04,
                  right: 0,
                  child: Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      height: mediaHeight * 0.9,
                      width: mediaWidth * 0.527,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        gradient: LinearGradient(
                            //transform: GradientRotation(1.5708),
                            colors: [
                              Color(0xff6A679E),
                              Color(0xff5D54A4),
                            ]),
                      ),
                    ),
                  ),
                ),
                //Shape 2
                Positioned(
                  top: -mediaHeight * 0.286,
                  right: 0,
                  child: Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      height: mediaHeight * 0.36,
                      width: mediaWidth * 0.61,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Color(0xff6C63AC),
                      ),
                    ),
                  ),
                ),
                //Shape 1
                Positioned(
                  top: -(mediaHeight * 0.083),
                  right: mediaWidth * 0.33,
                  child: Transform.rotate(
                    angle: 0.785398,
                    child: Container(
                      height: mediaHeight * 0.86,
                      width: mediaWidth * 1.4,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(72)),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                //UserName
                Container(
                  margin: EdgeInsets.only(
                      top: mediaHeight * 0.26, left: mediaWidth * 0.1),
                  width: mediaWidth * 0.5,
                  child: const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'User name / Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff747474)),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffD1D1D4), width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffD1D1D4), width: 2),
                      ),
                    ),
                  ),
                ),
                //Password
                Container(
                  margin: EdgeInsets.only(
                      top: mediaHeight * 0.36, left: mediaWidth * 0.1),
                  width: mediaWidth * 0.5,
                  child: const TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff747474)),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffD1D1D4), width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffD1D1D4), width: 2),
                      ),
                    ),
                  ),
                ),
                // Log in button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: mediaWidth * 0.05),
                  margin: EdgeInsets.only(
                      top: mediaHeight * 0.5, left: mediaWidth * 0.1),
                  height: mediaHeight * 0.1,
                  width: mediaWidth * 0.7,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff5C5696),
                            offset: Offset(0.0, 0.75),
                            spreadRadius: 2,
                            blurRadius: 2)
                      ],
                      color: Colors.white,
                      border: Border.all(color: Color(0xffD4D3E8)),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LOG IN NOW',
                            style: TextStyle(
                              color: Color(0xff5C5696),
                              fontWeight: FontWeight.bold,
                              fontSize: (mediaHeight * 0.1) * 0.2,
                            )),
                        Transform.rotate(
                          angle: 3.14159,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff7875B5),
                            size: (mediaHeight * 0.1) * 0.35,
                          ),
                        )
                      ]),
                ),

                Container(
                  margin: EdgeInsets.only(
                      top: mediaHeight * 0.76, left: mediaWidth * 0.68),
                  child: Text(
                    'log in via',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: mediaHeight * 0.03),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: mediaHeight * 0.82, left: mediaWidth * 0.68),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        )
                      ]),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
