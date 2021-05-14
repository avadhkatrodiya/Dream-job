import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lastdesign/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> list = ['IT', 'Science', 'Culture', 'Beauty', 'Dance', 'Sport'];
  List<String> image = [
    'computer.png',
    'sci.png',
    'gal.png',
    'brain.png',
    'dance.png',
    'running.png'
  ];
  final List<Color> colors = <Color>[
    Color(0xff4e50bf),
    Colors.black12,
    Colors.black12,
    Colors.black12,
    Colors.black12,
    Colors.black12
  ];
  List<Color> color2 = <Color>[
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  List<Color> color3 = <Color>[
    Color(0xfffce8cd),
    Colors.black12,
    Colors.black12,
    Colors.black12,
    Colors.black12,
    Colors.black12
  ];
  List<String> text1 = [
    'UI/Ux\nDesigner',
    'IOS\nDeveloper',
    'Android\nDeveloper',
    'PHP\nDeveloper',
    'Data\nScientist',
    'Web\nDeveloper'
  ];
  List<String> text2 = [
    '4 Job Opportunity',
    '13 Job Opportunity',
    '5 Job Opportunity',
    '2 Job Opportunity',
    '3 Job Opportunity',
    '6 Job Opportunity',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xff4e50bf),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Page2()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Image.asset(
                        'images/menu.png',
                        color: Colors.white,
                        height: 30,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 30, top: 20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://pics.freeicons.io/uploads/icons/png/6620618271548234969-512.png')),
                        color: Color(0xfffcfbf9),
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: 300,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Color(0xfffce8cd),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                child: Stack(
                  children: [
                    Positioned(
                      top: -20,
                      right: -20,
                      child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color(0xffffdd83),
                                shape: BoxShape.circle),
                          ))),
                    ),
                    Positioned(
                      top: 20,
                      right: 85,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff4e50bf),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      right: 20,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffff93a6),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 80, left: 30),
                        child: Text(
                          'Welcome,',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 105, left: 30),
                        child: Text(
                          'Find your\ndream job!',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 330),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Explore Categories',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Image.asset(
                              'images/menu2.png',
                              height: 30,
                            ))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10, right: 30),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 120,
                              width: 70,
                              margin: EdgeInsets.only(
                                left: 10,
                              ),
                              decoration: BoxDecoration(
                                  color: colors[index],
                                  borderRadius: BorderRadius.circular(40)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      child: Center(
                                        child: Image.asset(
                                          'images/${image[index]}',
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      list[index],
                                      style: TextStyle(
                                          fontSize: 12, color: color2[index]),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 20,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              'Populor Search',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Image.asset(
                                'images/menu2.png',
                                height: 30,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10, right: 30),
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: list.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50)),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 180,
                                    width: 150,
                                    margin: EdgeInsets.only(
                                      bottom: 10,
                                      left: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: color3[index],
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                  ),
                                  Positioned(
                                    top: -20,
                                    right: -20,
                                    child: Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff4e50bf),
                                        ),
                                        child: Center(
                                            child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Color(0xffffdd83),
                                              shape: BoxShape.circle),
                                        ))),
                                  ),
                                  Positioned(
                                    top: 20,
                                    right: 65,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 70,
                                    right: 20,
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffff93a6),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 80, left: 20),
                                        child: Text(
                                          text1[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 10, left: 20),
                                        child: Text(
                                          text2[index],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
