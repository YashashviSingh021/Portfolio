import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../explorePage.dart';
import 'navbar.dart';
import '../utils/responsiveLayout.dart';

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/prtfo.gif", scale: .80)),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text("Hello!",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF8591B0))),
                      SizedBox(width: 10,),
                      Image(image: AssetImage('assets/hello.png',),height: 50,width: 50,)
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Welcome To ",
                        style:
                            TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                        children: [
                          TextSpan(
                              text: "",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ]),
                  ),
                  Text("My Portfolio",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87)),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ExplorePage()));
                        },
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                height: 50,
                                width: 300,
                                color: Colors.black45,
                                child: Center(
                                    child: Text(
                                  "LET’S EXPLORE ",
                                  style: TextStyle(color: Colors.white),
                                ))))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Text(
                  "Hello!",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFF8591B0),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular"),


                ),
                SizedBox(width: 10,),
                Image(image: AssetImage('assets/hello.png',),height: 35,width: 35,)
              ],
            ),
            RichText(
              text: TextSpan(
                text: 'Welcome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'My Portfolio',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => ExplorePage()));
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: 50,
                          width: 300,
                          color: Colors.black45,
                          child: Center(
                              child: Text(
                            "LET’S EXPLORE ",
                            style: TextStyle(color: Colors.white),
                          ))))),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/prtfo.gif", scale: .85)),
            ),
            SizedBox(
              height: 32,
            ),
            // Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
