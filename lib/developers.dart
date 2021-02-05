import 'package:flutter/material.dart';

class DevelopersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 450,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: new NetworkImage(
                            "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbXqtN3%2FbtqVnXac77y%2FNJNLshntkG2bUgXPowj3hK%2Fimg.jpg"),
                        fit: BoxFit.fill)),
              ),
              DevPage()
            ],
          ),
        ),
      ),
    );
  }
}

class DevPage extends StatefulWidget {
  @override
  _DevPageState createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("민영 : 감정 화분을 통해 \n모두의 마음이 평온해지는\n 그날까지..",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black54)),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("영진 : 감정 화분을 통해 \n여러분 마음에도 아름다운 \n꽃이 피어나길 바랍니다.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black54)),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("채연 : 소소한 일들을 천천히 \n적어보며 스스로를 \n알아가셨으면 합니다:)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black54)),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("슬아 : 감정 화분이 여러분들의\n 마음 상태에 도움이 \n되었으면 좋겠습니다!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black54)),
              ),
            ],
          ),)
        ,
      )
      ,
    );
  }
}