import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          ],
        ),
      ),

    );
  }
}

class HomeScreenWidget2 extends StatelessWidget {
  const HomeScreenWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 6,
          bottom: 6,
          left: 41,
          right: 85,
        ),
        child: Container(
          width: 249,
          height: 26,
          color: Colors.white,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: '"Cold and Cough"',
              hintStyle: TextStyle(
                fontSize: 8.69,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
              ),
              suffixIcon: Icon(Icons.mic_none_sharp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(width: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenWidget1 extends StatelessWidget {
  const HomeScreenWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 17, top: 5.57),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Krishna Vihar Colony",
                            style: TextStyle(
                              fontSize: 12.6,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down, size: 15),
                        ],
                      ),
                      Text(
                        "Home Address, Block D, Street 10, 221198",
                        style: TextStyle(
                          fontSize: 8.57,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
                bottom: 6,
                right: 17,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/image.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
