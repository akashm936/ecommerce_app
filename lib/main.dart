import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homescreenWidget1.dart';
import 'homescreenwidget2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFfffdf5)),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeScreenWidget1(),
            HomeScreenWidget2(),
            Container(
              width: double.infinity,
              height: 136,
              child: Image.asset(
                'assets/images/banner1.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              width: double.infinity,
              height: 104,
              // color: Colors.purpleAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 14,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Container(
                              width: 46,
                              height: 1,
                              color: Color(0xFFd8e3ca),
                            ),
                          ),
                          Text(
                            "Offers",
                            style: TextStyle(
                              fontSize: 12.85,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Container(
                              width: 275,
                              height: 1,
                              color: Color(0xFFd8e3ca),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
