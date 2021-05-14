import 'package:flutter/material.dart';
import 'package:lastdesign/main.dart';
import 'package:lastdesign/page3.dart';

class Page2 extends StatelessWidget {
  List<String> main = [
    'Lead Ui Designer',
    'Senior Web Designer',
    'UI/UX Designer',
    'Graphic Designer',
    'App Designer'
  ];
  List<String> image = [
    'instagram.png',
    'skype.png',
    'search.png',
    'pie-chart.png',
    'android.png'
  ];
  List<String> text = [
    '\$16k- \$10k',
    '\$10k- \$8k',
    '\$8k- \$6k',
    '\$6k- \$4k',
    '\$4k- \$2k',
  ];
  List<Color> color = <Color>[
    Color(0xfff4f7ff),
    Color(0xfff4f7ff),
    Color(0xfffce8cd),
    Color(0xfff4f7ff),
    Color(0xfff4f7ff),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xfffce8cd),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50))),
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30, left: 30),
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 30),
                            child: Text(
                              'UI/Ux\nDesigner',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 30),
                            child: Text(
                              '4 Job Opportunity',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    right: -50,
                    child: Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffffdd83)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 100,
                    top: 20,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff4e50bf),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 100,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffff93a6)),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemCount: main.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin:
                                EdgeInsets.only(top: 30, left: 30, right: 30),
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: color[index],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Image.asset(
                                      'images/${image[index]}',
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          main[index],
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          text[index],
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page3()));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
