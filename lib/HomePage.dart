import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:intl/intl.dart';

//void main() {
//  runApp(MyApp());
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'emotional flowerpot',
//      theme: ThemeData(
//        primarySwatch: Colors.blueGrey,
//      ),
//      home: HomePage(),
//    );
//  }
//}

var count = 0;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Emotional Flowerpot",
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/background2.png"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[Expanded(
                flex: 1,
                child: SizedBox(),
              ),
                Container(child: _homeTop()),
                Expanded(flex: 20, child: _homeMiddle(context)),
                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                Expanded(flex: 2, child: _homeBottom(context)),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                )
              ],
            ),
          ),
        ));
  }
}

Widget _homeTop() {
  var now3 = new DateTime.now();
  var now3Fo = formatterT.format(now3);
  return Center(
    child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 4,
            child: RaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new LayoutBuilder(
                    builder: (context, constraint) {
                      return AutoSizeText(
                        now3Fo,
                        style: TextStyle(fontSize: 25), //minimum font size
                        minFontSize: 10,
                        stepGranularity: 10,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      );
                    },
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
          Expanded(flex: 8, child: SizedBox()),
        ]),
  );
}

Widget _homeMiddle(BuildContext context) {
  return Center(
    child: Container(
      child: CustomMultiChildLayout(
        delegate: MyDelegate(objectCenter: FractionalOffset(0.5, 1.15)),
        children: [
          LayoutId(
            id: _Slot.circle,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.23,
              child: Image.asset('assets/flowerpot.png'),
            ),
          ),
          LayoutId(
            id: _Slot.image,
            // Use AspectRatio to emulate an image
            child: AspectRatio(
              aspectRatio: 1.25,
              child: _dateTimeImage(),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _homeBottom(BuildContext context) {
  return Center(
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 2,
          child: RaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new LayoutBuilder(
                  builder: (context, constraint) {
                    return new Icon(
                      Icons.article_rounded,
                      color: Colors.blueGrey,
                      size: constraint.biggest.height,
                    );
                  },
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
        ),
        Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 2,
          child: RaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new LayoutBuilder(
                  builder: (context, constraint) {
                    return new Icon(
                      Icons.add_circle_outline,
                      color: Colors.blueGrey,
                      size: constraint.biggest.height,
                    );
                  },
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/write');
            },
          ),
        ),
        Expanded(flex: 1, child: SizedBox()),
        Expanded(
          flex: 2,
          child: RaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new LayoutBuilder(
                  builder: (context, constraint) {
                    return new Icon(
                      Icons.settings_outlined,
                      color: Colors.blueGrey,
                      size: constraint.biggest.height,
                    );
                  },
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0)),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
        ),
        Expanded(flex: 1, child: SizedBox()),
      ],
    ),
  );
}

var formatterT = new DateFormat('MM/dd');

final now = new DateTime.now();
String formatter = DateFormat('y').format(now);
int nowYFo = int.parse(formatter);
String formatter2 = DateFormat('M').format(now);
int nowMFo = int.parse(formatter2);
String formatter3 = DateFormat('D').format(now);
int nowDFo = int.parse(formatter3);

//final sevenDays = now.add(new Duration(days: 7));
//int sevenFo = int.parse(formatter.format(sevenDays));

//final fifteenDays = now.add(new Duration(days: 15));
//int fifteenFo = int.parse(formatter.format(fifteenDays));

//final twentyTwoDays = now.add(new Duration(days: 22));
//int twentyFo = int.parse(formatter.format(twentyTwoDays));

//final thirtyDays = now.add(new Duration(days: 30));
//int thirtyFo = int.parse(formatter.format(thirtyDays));

Widget _dateTimeImage() {
  var now2 = new DateTime.now();
  formatter = DateFormat('y').format(now2);
  int now2YFo = int.parse(formatter);
  formatter = DateFormat('M').format(now2);
  int now2MFo = int.parse(formatter);
  formatter = DateFormat('d').format(now2);
  int now2DFo = int.parse(formatter);

  if (now2YFo - nowYFo > 0) {
    now2MFo += 12;
  }
  if (now2MFo - now2MFo > 0) {
    now2DFo += 30;
  }
  int num = 2;
  /*if(now2DFo-nowDFo < 7){
    return Image.asset('assets/sprout.png');
  }else if(now2DFo-nowDFo >= 7){
    return Image.asset('assets/stem1.png');
  }else if(now2DFo-nowDFo >= 15){
    return Image.asset('assets/stem2.png');
  }else if(now2DFo-nowDFo >= 22){
    return Image.asset('assets/stem3.png');
  }else if(now2DFo-nowDFo >= 30){
    return Image.asset('assets/stem2.png');
  }*/
  if (num < 7) {
    return Image.asset('assets/sprout.png');
  } else if (num < 15) {
    return Image.asset('assets/stem1.png');
  } else if (num < 22) {
    return Image.asset('assets/stem2.png');
  } else if (num < 30) {
    return Image.asset('assets/stem3.png');
  } else if (num == 30) {
    return Image.asset('assets/stem3.png');
  }
}

enum _Slot {
  image,
  circle,
}

class MyDelegate extends MultiChildLayoutDelegate {
  final FractionalOffset objectCenter;

  MyDelegate({@required this.objectCenter});

  @override
  void performLayout(Size size) {
    Size imageSize = Size.zero;
    Offset imagePos = Offset.zero;

    if (hasChild(_Slot.image)) {
      imageSize = layoutChild(_Slot.image, BoxConstraints.loose(size));

      // Center the image in the available space
      imagePos = (size - imageSize as Offset) * 0.5;
      positionChild(_Slot.image, imagePos);
    }

    if (hasChild(_Slot.circle)) {
      Size childSize = layoutChild(_Slot.circle, BoxConstraints());
      positionChild(
          _Slot.circle,
          imagePos +
              objectCenter.alongSize(imageSize) -
              childSize.center(Offset.zero));
    }
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) => false;
}