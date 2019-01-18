import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'HexColor.dart';
//list data
import 'list/listInfor.dart' as _listInforTitle;
import 'list/listProduct.dart' as _listProductTitle;
import 'list/listBenefit.dart' as _listBenefitTitle;
import 'list/listManufact.dart' as _listManufactTitle;
import 'list/listWork.dart' as _listWorkTitle;
import 'list/detailAbout.dart' as _detailAbout;
//main method
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Slide> slides = new List();
  @override
  void initState() {
    super.initState();
    Color cl_bar=HexColor("009933");
    //page
    final makeBodyOnePage = Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/bggg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('ข้อมูลผลิตภัณฑ์')
            ],
      ),
      ),
    );
    final makeBodyTwoPage = Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        ),
      ),
    );
    final makeBodyThreePage = Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        ),
      ),
    );
    final makeBodyFourthPage = Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        ),
      ),
    );
    final makeBodyFivePage = Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        ),
      ),
    );
    final makeBodySixPage = Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            children: <Widget>[
              Text('ข้อมูลผลิตภัณฑ์')
            ]
        ),
      ),
    );
    //end Page

    void isOnePage() {
      Navigator.of(context).push(
        new MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return new Scaffold(
              //backgroundColor: cl_back,
              appBar: new AppBar(
                backgroundColor: cl_bar,
                title: const Text('ข้อมูลประชาสัมพันธ์',style:TextStyle(fontFamily: 'Poppins')),
                elevation: Theme
                    .of(context)
                    .platform == TargetPlatform.iOS ? 0.0 : 4.0,
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
                  child: _listInforTitle.makeBodyTitle,
                ),
              )
            );
          },
        ),
      );
    }

    void isTwoPage(){
      Navigator.of(context).push(
        new MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return new Scaffold(
              //backgroundColor: cl_back,
              appBar: new AppBar(
                backgroundColor: cl_bar,
                title: const Text('ข้อมูลผลิตภัณฑ์',style:TextStyle(fontFamily: 'Poppins')),
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
                  child: _listProductTitle.makeBodyTitle,
                ),
              ),
            );
          },
        ),
      );
    }
    void isThreePage(){
      Navigator.of(context).push(
        new MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return new Scaffold(
              //backgroundColor: cl_back,
              appBar: new AppBar(
                backgroundColor: cl_bar,
                title: const Text('คุณประโยชน์',style:TextStyle(fontFamily: 'Poppins')),
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
                  child: _listBenefitTitle.makeBodyTitle,
                ),
              ),
            );
          },
        ),
      );
    }
    void isFourthPage(){
      Navigator.of(context).push(
        new MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return new Scaffold(
              //backgroundColor: cl_back,
              appBar: new AppBar(
                backgroundColor: cl_bar,
                title: const Text('กระบวนการผลิต',style:TextStyle(fontFamily: 'Poppins')),
              ),
              body:new SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/back.png"),
                      fit: BoxFit.none,
                    ),
                  ),
                  child: _listManufactTitle.makeBodyTitle,
                ),
              ),
            );
          },
        ),
      );
    }
    void isFivePage(){
      Navigator.of(context).push(
        new MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return new Scaffold(
              //backgroundColor: cl_back,
              appBar: new AppBar(
                backgroundColor: cl_bar,
                title: const Text('ประวัติและผลงานกลุ่ม',style:TextStyle(fontFamily: 'Poppins')),
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
                  child: _listWorkTitle.makeBodyTitle,
                ),
              ),
            );
          },
        ),
      );
    }
    void isSixPage(){
      Navigator.of(context).push(
        new MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return new Scaffold(
              //backgroundColor: cl_back,
              appBar: new AppBar(
                backgroundColor: cl_bar,
                title: const Text('เกี่ยวกับเรา',style:TextStyle(fontFamily: 'Poppins')),
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
                  child: _detailAbout.body,
                ),
              ),
            );
          },
        ),
      );
    }

    slides.add(
      new Slide(
        title: "ข้อมูลประชาสัมพันธ์",
        styleTitle:
        TextStyle(color: HexColor("#1d313a"), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        description: "ประชาสัมพันธ์ข้อมูลข่าวสารของกลุ่มอยากทราบความเคลื่อนไหว? (คลิกรูป)",
        styleDescription:
        TextStyle(color: HexColor("#ffffff"), fontSize: 16.0, fontFamily: 'Poppins'),
        pathImage: "assets/images/public_relations.png",
        /*colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#54404e"),*/
        colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#009933"),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        onCenterItemPress: () {isOnePage();},
      ),
    );
    slides.add(
      new Slide(
        title: "ข้อมูลผลิตภัณฑ์",
        styleTitle:
        TextStyle(color: HexColor("#1d313a"), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        description: "อยากทราบรายละเอียดผลิตภัณฑ์ของกลุ่ม? \n(คลิกรูป)",
        styleDescription:
        TextStyle(color: HexColor("#ffffff"), fontSize: 16.0, fontFamily: 'Poppins'),
        pathImage: "assets/images/products.png",
        colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#009933"),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        onCenterItemPress: () {isTwoPage();},
      ),
    );
    slides.add(
      new Slide(
        title: "คุณประโยชน์",
        styleTitle:
        TextStyle(color: HexColor('#1d313a'), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        description:
        "ข้าวฮางให้ประโยชน์อะไรแก่ร่างกายเราบ้าง? \n(คลิกรูป)",
        styleDescription:
        TextStyle(color: HexColor('#ffffff'), fontSize: 16.0, fontFamily: 'Poppins'),
        pathImage: "assets/images/benefit.png",
        /*colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#f7dc15"),*/
        colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#009933"),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        onCenterItemPress: () {isThreePage();},
      ),
    );
    slides.add(
      new Slide(
        title: "กระบวนการผลิต",
        styleTitle:
        TextStyle(color: HexColor('#1d313a'), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        description:
        "อยากรู้กระบวนการผลิตข้าวฮาง? (คลิกรูป)",
        styleDescription:
        TextStyle(color: HexColor('#ffffff'), fontSize: 16.0, fontFamily: 'Poppins'),
        pathImage: "assets/images/productionds.png",
        /*colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#f7dc15"),*/
        colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#009933"),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        onCenterItemPress: () {isFourthPage();},
      ),
    );
    slides.add(
      new Slide(
        title: "ประวัติและผลงานกลุ่ม",
        styleTitle:
        TextStyle(color: HexColor('#1d313a'), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        description:
        "กลุ่มของเรามีผลงานและรางวัลอะไรบ้าง? (คลิกรูป)",
        styleDescription:
        TextStyle(color: HexColor('#ffffff'), fontSize: 16.0, fontFamily: 'Poppins'),
        pathImage: "assets/images/work.png",
        /*colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#f7dc15"),*/
        colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#009933"),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        onCenterItemPress: () {isFivePage();},
      ),
    );
    slides.add(
      new Slide(
        title: "เกี่ยวกับเรา",
        styleTitle:
        TextStyle(color: HexColor('#1d313a'), fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
        description:
        "อยากทราบข้อมูลติดต่อเรา? (คลิกรูป)",
        styleDescription:
        TextStyle(color: HexColor('#ffffff'), fontSize: 16.0, fontFamily: 'Poppins'),
        pathImage: "assets/images/about.png",
        /*colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#f7dc15"),*/
        colorBegin: HexColor('#fefefe'),
        colorEnd: HexColor("#009933"),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        onCenterItemPress: () {isSixPage();},
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context).pushReplacementNamed('/Welcome');
  }

  void onSkipPress() {
    Navigator.of(context).pushReplacementNamed('/Welcome');
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: HexColor('#ffffff'),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: HexColor('#ffffff'),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: HexColor('#ffffff'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      onSkipPress: this.onSkipPress,
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: HexColor('#ffffff'),

      // Next, Done button
      onDonePress: this.onDonePress,
      renderNextBtn: this.renderNextBtn(),
      renderDoneBtn: this.renderDoneBtn(),
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: HexColor('#ffffff'),

      // Dot indicator
      colorDot: Color(0x33D02090),
      colorActiveDot: HexColor('#ffffff'),
      sizeDot: 13.0,
    );
  }
}
