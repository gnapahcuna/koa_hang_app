import 'package:flutter/material.dart';
import 'home.dart';
import 'HexColor.dart';
//main method
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => new _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*final loginButton = Padding(
      padding: EdgeInsets.fromLTRB(45, 150, 50, 45),
      child: Material(
        borderRadius: BorderRadius.circular(50.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        //elevation: 5.0,
        child: MaterialButton(
          minWidth: double.infinity,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Get Start', style: TextStyle(color: Colors.white)),
        ),
      ),
    );*/
    final getstartButton = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: MaterialButton(
          //minWidth: double.infinity,
          height: 42.0,
          child: Text(
            'Get Start',
            style: TextStyle(color: Colors.white,fontSize: 18.0, fontFamily: 'Poppins'),
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pushReplacementNamed('/Home');
          },
        ),
      ),
    );

    final textDesc =Padding(
      padding: EdgeInsets.only(top: 130.0),
      child: Text(
        'สาขาคอมพิวเตอร์ มหาวิทยาลับราชภัฏสกลนคร (v.1.0.0)',
        style: TextStyle(color: HexColor("#1d313a"),fontSize: 14.0, fontFamily: 'Poppins'),
      ),
    );

    final imgTitle =Image(image: new AssetImage("assets/images/title.png"),
      height: 300.0,
      width: 300.0,);


    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 24.0,width: double.infinity),
            imgTitle,
            getstartButton,
            textDesc
          ],
        ),
      ),
    );

  }

}
