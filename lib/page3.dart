import 'package:flutter/material.dart';
import 'package:lastdesign/page2.dart';

class Page3 extends StatelessWidget {
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
                                      builder: (context) => Page2()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 30, left: 30),
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 30,
                              ),
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
                  color: Colors.white70,
                  child: Container(
                    margin: EdgeInsets.only(top: 150),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Description',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 30, top: 20, right: 30),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Google LLC is an American multinational technology company that specializes ininternet-related services and produscts, whichinclude online advertising technologis, a search engine,cloud computing, software, and hardware.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 30,
                            ),
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Color(0xff4e50bf),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 30),
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xfffce8cd),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                topLeft: Radius.circular(15))),
                                        width: 70,
                                        child: Center(
                                            child: Image.asset(
                                          'images/meeting.png',
                                          height: 30,
                                        )),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Apply for Onsite Interview',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30, right: 30),
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xfffce8cd),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                topLeft: Radius.circular(15))),
                                        width: 70,
                                        child: Center(
                                            child: Image.asset(
                                          'images/comp.png',
                                          height: 30,
                                        )),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Apply for Onsite Interview',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  25),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 150,
            left: 30,
            right: 30,
            child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff4e50bf),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                        left: 30,
                      ),
                      child: Text(
                        'UI/UX Designer',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20),
                      child: Text(
                        '\$8k-\$6k',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
            top: 120,
            left: 60,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Image.asset(
                'images/search.png',
                height: 30,
                width: 30,
              )),
            ),
          ),
          Positioned(
            top: 270,
            right: 160,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  color: Color(0xfff4f7ff),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ]),
              child: Center(
                  child: Image.asset(
                'images/girl2.png',
                height: 30,
                width: 30,
              )),
            ),
          ),
          Positioned(
            top: 270,
            right: 120,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  color: Color(0xfff4f7ff),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ]),
              child: Center(
                  child: Image.asset(
                'images/boy.png',
                height: 30,
                width: 30,
              )),
            ),
          ),
          Positioned(
            top: 270,
            right: 80,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  color: Color(0xfff4f7ff),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ]),
              child: Center(
                child: Image.asset(
                  'images/girl.png',
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            right: 40,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ]),
              child: Center(
                  child: Image.asset(
                'images/menu2.png',
                height: 30,
                width: 30,
              )),
            ),
          ),
        ],
      )),
    );
  }
}
