// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pancakes/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       // primaryColor: Color(0x00f9f9f9),
       // splashColor: Color(0x00f9f9f9),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyHome> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.3),
                ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Search and choose your",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height/35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "favorite Pancakes",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height/35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Discover the best Pancakes from",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height/35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "over 1,599 restaurants",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height/35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    height: MediaQuery.of(context).size.height/15,
                    width: MediaQuery.of(context).size.height/3,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return page();
                        }));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.black, fontSize:  MediaQuery.of(context).size.height/35),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
