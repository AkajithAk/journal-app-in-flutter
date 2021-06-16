import 'dart:async';

import 'package:flutter/material.dart';
import 'package:journals/getstart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => GetStart())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Image.asset("images/splashscreen.png",
          fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    // alignment: Alignment.center,
    ),
      )
    );
  }
}




