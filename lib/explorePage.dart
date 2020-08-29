import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_icons/flutter_icons.dart';

import './utils/responsiveLayout.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffFFFFF0),
        Color(0xffFFFFF0),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[Body()],
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
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1300,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            widthFactor: .1,
            heightFactor: .1,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                  width: 3, color: Color(0xffA2834D),
//                  color: Color(0xFF8e44ad),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(
                  1,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image(
                    image: AssetImage("assets/profilepic.jpg"),
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
//            child: CircleAvatar(
//              backgroundColor: Colors.white,
//              child: ClipRRect(
//                borderRadius: BorderRadius.circular(130),
//                child: Image.asset(
//                  "assets/profilepic.jpg",
//
//
//                  width: 130,
//                  height: 130,
//                ),
//              ),
//            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("- Introduction",
                      style: TextStyle(
                          fontSize: 30,
//                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat-Regular",
//                          color: Color(0xFF8591B0)
                          color: Colors.black45)),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Yashashvi Singh",
                        style: TextStyle(
                          fontSize: 50,
                          color: Color(0xFF8591B0),
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: "",
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Mobile Application Developer |iOS | Flutter.',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87)),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(colors: [
                          const Color(0xffA2834D),
                          const Color(0xffBC9A5F)
                        ])),
                    child: Text(
                      'Some Selected Projects',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Flex(
                      direction:
                          context.isMobile ? Axis.vertical : Axis.horizontal,
                      children: [
//                      "\n"
//                          .richText
//                          .withTextSpanChildren(
//                          ["Some Selected projects.".textSpan.yellow400.make()])
//                          .xl4
//                          .white
//                          .make(),
                        20.widthBox,
                        Expanded(
                          child: VxSwiper(
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                            items: [
                              ProjectWidget(
                                title: "My Shop",
                              ),
                              ProjectWidget(title: "Chat app"),
                              ProjectWidget(title: "Instagram UI"),
                              ProjectWidget(title: "Meals app"),
                              ProjectWidget(title: "India Today news app"),
                              ProjectWidget(title: "Personal Expenses"),
                            ],
                            height: 170,
                            viewportFraction: context.isMobile ? 0.75 : 0.4,
                            autoPlay: true,
                            autoPlayAnimationDuration: 1.seconds,
                          ),
                        )
                      ]).py64().h(context.isMobile ? 400 : 250),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      'Connect with me -',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(colors: [
                              const Color(0xffA2834D),
                              const Color(0xffBC9A5F)
                            ])),
                        child: Text(
                          'yash210singh@gmail.com',
                          style: TextStyle(color: Colors.white, fontSize: 21),
                        ),
                      ),
//            .mdClick((){
//      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Page1()));

                      SizedBox(
                        width: 20,
                      ),
                      //Icon(AntDesign.mail,color: Colors.white,)
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            _launchURL(
                                'https://www.facebook.com/yashashvi.singh.98/');
                          },
                          child: Icon(
                            AntDesign.facebook_square,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            _launchURL(
                                'https://www.instagram.com/y_a_s_h____s_i_n_g_h/?hl=en');
                          },
                          child: Icon(
                            AntDesign.instagram,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            _launchURL('https://github.com/YashashviSingh021');
                          },
                          child: Icon(
                            AntDesign.github,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 15,
                        width: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            _launchURL(
                                'https://www.linkedin.com/in/yashashvi-singh-52b116155/');
                          },
                          child: Icon(
                            AntDesign.linkedin_square,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Made In India',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        AntDesign.heart,
                        color: Colors.red,
                      ),
                    ],
                  )),

//                  28.heightBox,
//                  [
//                    "Made in India with".text
//                        .size(14)
//                        .black
//                        .center
//                        .make(),
//                    20.widthBox,
//                    Icon(
//                      AntDesign.heart,
//                      color: Vx.red500,
//                      size: 18,
//                    )
//                  ].hStack(
//
//                      crossAlignment: CrossAxisAlignment.center)
                ],

                // Search()
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "- Introduction",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black45,
//                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                text: 'Yashashvi Singh ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0), fontWeight: FontWeight.bold,),
                children: <TextSpan>[
                  TextSpan(
                      text: '',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Mobile Application Developer |iOS | Flutter.',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),

            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(600),
                    child: Image.asset(
                      "assets/profilepic.jpg",
                      height: 300,
                      width: 300,
                    )),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(colors: [
                    const Color(0xffA2834D),
                    const Color(0xffBC9A5F)
                  ])),
              child: Center(
                child: Text(
                  'Some Selected Projects',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),

            Flex(
                direction: context.isMobile ? Axis.vertical : Axis.horizontal,
                children: [
//                      "\n"
//                          .richText
//                          .withTextSpanChildren(
//                          ["Some Selected projects.".textSpan.yellow400.make()])
//                          .xl4
//                          .white
//                          .make(),
                  20.widthBox,
                  Expanded(
                    child: VxSwiper(
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      items: [
                        ProjectWidget(
                          title: "My Shop",
                        ),
                        ProjectWidget(title: "Chat app"),
                        ProjectWidget(title: "Instagram UI"),
                        ProjectWidget(title: "Meals app"),
                        ProjectWidget(title: "India Today news app"),
                        ProjectWidget(title: "Personal Expenses"),
                      ],
                      height: 170,
                      viewportFraction: context.isMobile ? 0.75 : 0.4,
                      autoPlay: true,
                      autoPlayAnimationDuration: 1.seconds,
                    ),
                  )
                ]).py64().h(context.isMobile ? 400 : 250),

//

            // Search(),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Connect with me -',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(colors: [
                        const Color(0xffA2834D),
                        const Color(0xffBC9A5F)
                      ])),
                  child: Text(
                    'yash210singh@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                ),
//            .mdClick((){
//      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Page1()));

                SizedBox(
                  width: 20,
                ),
                //Icon(AntDesign.mail,color: Colors.white,)
              ],
            ),

            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.facebook.com/yashashvi.singh.98/');
                    },
                    child: Icon(
                      AntDesign.facebook_square,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.instagram.com/y_a_s_h____s_i_n_g_h/?hl=en');
                    },
                    child: Icon(
                      AntDesign.instagram,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL('https://github.com/YashashviSingh021');
                    },
                    child: Icon(
                      AntDesign.github,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 15,
                  width: 15,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL(
                          'https://www.linkedin.com/in/yashashvi-singh-52b116155/');
                    },
                    child: Icon(
                      AntDesign.linkedin_square,
                      color: Colors.black,
                    )),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Made In India',
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  AntDesign.heart,
                  color: Colors.red,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  const ProjectWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.black.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Color(0xffFAF0E6), elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16()
        .mdClick(() {
      _launchURL('https://github.com/YashashviSingh021');
    }).make();
  }
}
