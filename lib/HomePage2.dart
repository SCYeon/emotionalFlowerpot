import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

//본 페이지는 날짜 카운트 확인과 그로인한 꽃의 개화가 확인 불가하여 임의의 값을 넣어 진행함.

Random random = new Random();
var randomColor;
var randomFlower;

// ignore: camel_case_types
class flowerColorCount {
  int redCount;
  int blueCount;
  int purpleCount;
  int yellowCount;
  int greenCount;

  flowerColorCount(this.redCount, this.blueCount, this.purpleCount,
      this.yellowCount, this.greenCount);
}

Set<int> set;

List<int> notIndex = [
  0,
  1,
  2,
  7,
  8,
  9,
  10,
  18,
  19,
  29,
  40,
  50,
  51,
  52,
  58,
  59,
  39
];

var count = 0;

List<String> flowerList = [
  'assets/flowerone.png',
  'assets/floweroneleft.png',
  'assets/floweronerightb.png',
  'assets/floweroneleftb.png',
  'assets/floweroneb.png',
  'assets/floweronebleft.png',
  'assets/floweronebrightb.png',
  'assets/floweronebleftb.png',
  'assets/floweronep.png',
  'assets/floweronepleft.png',
  'assets/floweroneprightb.png',
  'assets/floweronepleftb.png',
  'assets/floweroney.png',
  'assets/floweroneyleft.png',
  'assets/floweroneyrightb.png',
  'assets/floweroneyleftb.png',
  'assets/floweroneg.png',
  'assets/floweronegleft.png',
  'assets/floweronegrightb.png',
  'assets/floweronegleftb.png'
];
var flowerListCount = 0;

Widget checkRandom(int i)  {
  if (index1.contains(i) && flowerListCount < count) {
    return Image.asset(flowerList[index2[flowerListCount++]]);
  } else
    return Image.asset('assets/flowerone4.png');
}

List<int> index2 = List<int>(count);
List<int> index1 = List<int>(count);
// ignore: missing_return
Widget forCountL() {
  flowerListCount = 0;
  flowerColorCount flower = flowerColorCount(4, 6, 3, 5, 7);

  count = flower.redCount +
      flower.purpleCount +
      flower.greenCount +
      flower.yellowCount +
      flower.blueCount;

  var randomNumber1 = 0;

  for (int i = 0; i < count; i++) {
    randomNumber1 = random.nextInt(60);
    while (true) {
      if (notIndex.contains(randomNumber1) || index1.contains(randomNumber1))
        randomNumber1 = random.nextInt(60);
      else {
        index1[i] = randomNumber1;
        break;
      }
    }
  }
  index1.sort();
  int flowerC = 0;
  for (int j = 0; j < flower.redCount; j++) {
    randomFlower = random.nextInt(4);
    index2[flowerC++] = randomFlower;
  }
  for (int j = 0; j < flower.blueCount; j++) {
    randomFlower = random.nextInt(4) + 4;
    index2[flowerC++] = randomFlower;
  }
  for (int j = 0; j < flower.purpleCount; j++) {
    randomFlower = random.nextInt(4) + 8;
    index2[flowerC++] = randomFlower;
  }
  for (int j = 0; j < flower.yellowCount; j++) {
    randomFlower = random.nextInt(4) + 12;
    index2[flowerC++] = randomFlower;
  }
  for (int j = 0; j < flower.greenCount; j++) {
    randomFlower = random.nextInt(4) + 16;
    index2[flowerC++] = randomFlower;
  }
  index2.shuffle();
}

final now = new DateTime.now();
String formatter = DateFormat('y').format(now);
int nowYFo = int.parse(formatter);
String formatter2 = DateFormat('M').format(now);
int nowMFo = int.parse(formatter2);
String formatter3 = DateFormat('D').format(now);
int nowDFo = int.parse(formatter3);

// ignore: missing_return
Widget dateTimeImage(BuildContext context) {
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
  int num = 30;


/* 날짜로 카운트 했을 시 - 실제 확인이 불가능하여 주석 처리함.
  if(now2DFo-nowDFo < 7){
    return Image.asset('assets/sprout.png');
  }else if(now2DFo-nowDFo >= 7){
    return Image.asset('assets/stem1.png');
  }else if(now2DFo-nowDFo >= 15){
    return Image.asset('assets/stem2.png');
  }else if(now2DFo-nowDFo >= 22){
    return Image.asset('assets/stem3.png');
  }else if(now2DFo-nowDFo >= 30){
    return Image.asset('assets/stem2.png');
  }
*/
  if (num < 7) {
    return Image.asset('assets/sprout.png');
  } else if (num < 15) {
    return Image.asset('assets/stem1.png');
  } else if (num < 22) {
    return Image.asset('assets/stem2.png');
  } else if (num < 30) {
    return Image.asset('assets/stem3.png');
  } else if (num == 30) {
    forCountL();
    return Center(
        child: Stack(children: <Widget>[
          Container(child: Image.asset('assets/stem3.png')),
          Container(
            child: GridView.count(
              crossAxisCount: 10,
              children: List.generate(60, (i) {
                return checkRandom(i);
              }),
            ),
          )
        ]));
  }
}