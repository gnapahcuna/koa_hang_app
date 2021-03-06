import 'package:flutter/material.dart';
import 'package:koa_hang_app/data/WorkTitle.dart' as _workTitle;
import 'package:koa_hang_app/data/WorkDetail.dart' as _workDetail;
import 'package:koa_hang_app/HexColor.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:koa_hang_app/server/server.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:carousel_pro/carousel_pro.dart';

Future<List<_workTitle.WorkTitle>> fetchTitle() async {
  try {
    http.Response response =
    await http.get(Server().IPAddress + '/work/getTitle.php');
    List responseJson = json.decode(response.body);
    //print(response.body);
    return responseJson.map((m) => new _workTitle.WorkTitle.fromJson(m)).toList();
  }catch (exception) {
    print(exception.toString());
  }
}

Future<List<_workDetail.WorkDetail>> fetchDetail(id) async {
  try {
    http.Response response =
    await http.get(Server().IPAddress + '/work/getDetail.php?id='+id);
    List responseJson = json.decode(response.body);
    //print(response.body);
    return responseJson.map((m) => new _workDetail.WorkDetail.fromJson(m)).toList();
  }catch (exception) {
    print(exception.toString());
  }
}
Color cl_card=HexColor("#ffffff");
Color cl_text_title=HexColor("#1d313a");
Color cl_text_desc=HexColor("#b3b3b3");
Color cl_text_desc1=HexColor("#667886");
Color cl_img_icon=HexColor("#b3b3b3");
Color cl_bar=HexColor("009933");
void asdasd(){

}
final makeBodyTitle = FutureBuilder<List<_workTitle.WorkTitle>>(
    future: fetchTitle(),
    builder: (context, snapshot) {
      if (!snapshot.hasData)
        // Shows progress indicator until the data is load.
        return new MaterialApp(
            debugShowCheckedModeBanner: false,
            home: new Scaffold(
              body: new Center(
                child: new CircularProgressIndicator(),
              ),
            )
        );
      // Shows the real data with the data retrieved.
      List<_workTitle.WorkTitle> work = snapshot.data;
      return new Container(
        child: ListView.builder(
          itemCount: work.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 6.0,
              margin: new EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 4.0),
              child: Container(
                decoration: BoxDecoration(
                    color: cl_card),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  title: Text(
                    work[index].work_name,
                    style: TextStyle(color: cl_text_title,
                        fontSize: 16.0, fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                  ),
                  // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                  subtitle: Row(
                    children: <Widget>[
                      /* Icon(Icons.linear_scale,
                                  color: Colors.yellowAccent),*/
                      Text("ล่าสุดเมื่อวันที่ : "+work[index].work_date,
                          style: TextStyle(color: cl_text_desc,
                              fontSize: 12.0, fontFamily: 'Poppins',fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  trailing:
                  Icon(Icons.keyboard_arrow_right, color: cl_img_icon,
                      size: 28.0),
                  onTap: () => _onTapItem(context, work[index].work_id),
                ),
              ),
            );
          },
        ),
      );
    }
);
void vdoPlay(url,BuildContext context){
  try {
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: "AIzaSyCCI3rDoper72xtbyY8-wgiDDe46WyzjEM ",
        videoUrl: url,
        autoPlay: true, //default falase
        fullScreen: true //default false
    );
  }catch(e){
    Scaffold
        .of(context)
        .showSnackBar(new SnackBar(content: new Text("เกิดข้อผิดพลาด ไม่สามารถเปิดวีดีโอได้")));
  }
}

void _onTapItem(BuildContext context,id) {
  final makeBodyDetail = FutureBuilder<List<_workDetail.WorkDetail>>(
      future: fetchDetail(id),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          // Shows progress indicator until the data is load.
          return new MaterialApp(
              debugShowCheckedModeBanner: false,
              home: new Scaffold(
                body: new Center(
                  child: new CircularProgressIndicator(),
                ),
              )
          );
        // Shows the real data with the data retrieved.
        List<_workDetail.WorkDetail> work = snapshot.data;
        List splits = work[0].work_img.split(",");
        List<NetworkImage> arrImg = new List();
        for(int i=0;i<splits.length;i++){
          arrImg.add(new NetworkImage(splits[i]));
          print("img : "+splits[i]);
        }
        return new Material(
            child: new Container(
                child: new SingleChildScrollView(
                    child: new ConstrainedBox(
                      constraints: new BoxConstraints(),
                      child: new Column(children: <Widget>[
                        new SizedBox(
                            height: 230.0,
                            width: 370.0,
                            child: new Carousel(
                              images: arrImg,
                              dotSize: 4.0,
                              dotSpacing: 15.0,
                              dotColor: Colors.lightGreenAccent,
                              indicatorBgPadding: 5.0,
                              dotBgColor: Colors.purple.withOpacity(0.5),
                              borderRadius: true,
                            )
                        ),
                        /*new Image.network(infor[0].infor_img,
                            fit: BoxFit.cover),*/
                        new Container(
                          padding:
                          EdgeInsets.only(
                              left: 18.0, right: 18.0, top: 16.0, bottom: 16.0),
                          //color: Colors.grey,
                          child: new Text(
                            'ชื่อผลิตภัณฑ์ : ' + work[0].work_name,
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
                            'รายละเอียด : ' + work[0].work_detail,
                            style: TextStyle(color: cl_text_desc1,
                                fontSize: 16.0,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 24.0, width: double.infinity),
                            Padding(
                              padding:
                              EdgeInsets.only(
                                  left: 18.0,
                                  right: 18.0,
                                  top: 16.0,
                                  bottom: 16.0),
                              child: RaisedButton(
                                child: MaterialButton(
                                  //minWidth: double.infinity,
                                  height: 42.0,
                                  child: Text(
                                    'คลิกเพื่อดูวิดีโอ',
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 18.0,
                                        fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () {
                                    vdoPlay(work[0].work_vdo, context);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                    ))));
      }
  );
  final makeAppBar = FutureBuilder<List<_workDetail.WorkDetail>>(
      future: fetchDetail(id),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          // Shows progress indicator until the data is load.
          return new MaterialApp(
              debugShowCheckedModeBanner: false,
              home: new Scaffold(
                backgroundColor: cl_bar,
                /*body: new Center(
                  child: new CircularProgressIndicator(),
                ),*/
              )
          );
        // Shows the real data with the data retrieved.
        List<_workDetail.WorkDetail> work = snapshot.data;
        return new Text(work[0].work_name,style: TextStyle(fontFamily: 'Poppins'),);
      }); //new Text(title,style: TextStyle(fontFamily: 'Poppins'),);

  Navigator.of(context).push(
    new MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return new Scaffold(
          //backgroundColor: cl_back,
            appBar: new AppBar(
              backgroundColor: cl_bar,
              title: makeAppBar,
            ),
            body: new SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/back.png"),
                    fit: BoxFit.none,
                  ),
                ),
                child: makeBodyDetail,
              ),
            )
        );
      },
    ),
  );
}

class ListWork{
  ListWork() : super();
}
