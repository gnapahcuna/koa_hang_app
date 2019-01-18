import 'package:koa_hang_app/HexColor.dart';
import 'package:flutter/material.dart';

Color cl_text_title=HexColor("#1d313a");
Color cl_text_desc1=HexColor("#667886");
final alucard = Hero(
  tag: 'hero',
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: CircleAvatar(
      radius: 72.0,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage('assets/images/title.png'),
    ),
  ),
);

final welcome = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    'ข้อมูลการติดต่อ',
    style: TextStyle(color: cl_text_title,
        fontSize: 20.0,
        fontFamily: 'Poppins'),
  ),
);

final lorem = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    'กลุ่มวิสาหกิจชุมชนแม่บ้านเกษตรกรบ้านดงหลวง ม.7 ต.บึงทวาย อ.เต่างอย จ.สกลนคร 47260 โทร. 08 1760 1765',
    style: TextStyle(color: cl_text_desc1,
        fontSize: 16.0,
        fontFamily: 'Poppins'),
  ),
);

final body = new Material(
    child: new Container(
        child: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new Column(children: <Widget>[
                new SizedBox(
                  height: 200.0,
                  width: 200.0,
                  child:Image.asset('assets/images/title.png',
                      fit: BoxFit.fill),
                ),
                new Container(
                  padding:
                  EdgeInsets.only(
                      left: 18.0, right: 18.0, top: 16.0, bottom: 16.0),
                  //color: Colors.grey,
                  child: new Text(
                    'ข้อมูลการติดต่อ',
                    style: TextStyle(color: cl_text_title,
                        fontSize: 20.0,
                        fontFamily: 'Poppins'),
                  ),
                ),
                new Container(
                  padding:
                  EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 0.0, bottom: 16.0),
                  child: new Text(
                    'กลุ่มวิสาหกิจชุมชนแม่บ้านเกษตรกรบ้านดงหลวง ม.7 ต.บึงทวาย อ.เต่างอย จ.สกลนคร 47260 โทร. 08 1760 1765',
                    style: TextStyle(color: cl_text_desc1,
                        fontSize: 16.0,
                        fontFamily: 'Poppins'),
                  ),
                )
              ]),
            ))));

class DetailAbout {
  DetailAbout() : super();
}