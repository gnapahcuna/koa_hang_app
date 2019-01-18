import 'dart:async';
import 'package:flutter/material.dart';
import 'welcome.dart';
import 'home.dart';


void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      //intent เกี่ยวข้อง
      '/Welcome': (BuildContext context) => new WelcomePage(),
      '/Home': (BuildContext context) => new HomePage(),

    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    //intent
    Navigator.canPop(context);
    Navigator.of(context).pushReplacementNamed('/Welcome');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        //set image
        child: /*SizedBox(
          height: 60.0,
          width: 60.0,
          child: new Image.asset('assets/images/koa_hang.png',fit: BoxFit.cover,),

        ),*/new Image.asset('assets/images/icon.png'),
      ),
    );
  }
}