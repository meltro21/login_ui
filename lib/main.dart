import 'dart:math';

import 'package:flutter/material.dart';

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
    print('height is $mediaHeight');
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff5D54A4), Color(0xff7C78B8)])),
          height: mediaHeight,
          width: mediaWidth,
          child: Stack(children: [
            //Shape 1
            Positioned(
              top: mediaHeight * 0.7,
              right: mediaWidth * 0.1,
              child: Transform.rotate(
                angle: 0.785398,
                child: Container(
                  height: mediaHeight * 0.6,
                  width: mediaWidth * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: const Color(0xff7E7BB9),
                  ),
                ),
              ),
            ),
            //Shape 2
            Positioned(
              top: mediaHeight * 0.1,
              right: 0,
              child: Transform.rotate(
                angle: 0.785398,
                child: Container(
                  height: mediaHeight * 0.7,
                  width: mediaWidth * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: LinearGradient(
                        transform: GradientRotation(4.71239),
                        colors: [Color(0xff5D54A4), Color(0xff6A679E)]),
                  ),
                ),
              ),
            ),
            //Shape 3
            Positioned(
              top: -mediaHeight * 0.17,
              right: 0,
              child: Transform.rotate(
                angle: 0.785398,
                child: Container(
                  height: mediaHeight * 0.2,
                  width: mediaWidth * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Color(0xff6C63AC),
                  ),
                ),
              ),
            ),
            //Shape 4
            Positioned(
              top: mediaHeight * 0.07,
              // left: -mediaWidth * 0.8,

              right: mediaWidth * 0.6,
              child: Transform.rotate(
                angle: 0.785398,
                child: Container(
                  height: mediaHeight,
                  width: mediaWidth * 1.25,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(72)),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Positioned(
            //   top: (mediaHeight / 2),
            //   left: mediaWidth / 2,
            //   child: Transform.rotate(
            //     angle: 0.78,
            //     child: Container(
            //       height: 300,
            //       width: 10,
            //       color: Colors.teal,
            //     ),
            //   ),
            // ),
            // Positioned(
            //   top: (mediaHeight / 2),
            //   left: mediaWidth / 2,
            //   child: Container(
            //     height: 10,
            //     width: 10,
            //     color: Colors.red,
            //   ),
            // ),
            // Positioned(
            //   top: (mediaHeight / 2) + 150,
            //   left: mediaWidth / 2,
            //   child: Container(
            //     height: 10,
            //     width: 10,
            //     color: Colors.orange,
            //   ),
            // ),
          ]),
        ),
      ),
    );
  }
}
