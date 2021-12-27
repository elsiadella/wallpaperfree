// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallpaper/screens/abstract.dart';
import 'package:wallpaper/screens/nature.dart';

class Categoryseeall extends StatefulWidget {
  const Categoryseeall({Key? key}) : super(key: key);

  @override
  _CategoryseeallState createState() => _CategoryseeallState();
}

class _CategoryseeallState extends State<Categoryseeall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Category',
            style: TextStyle(
                color: Color(0xFFFF6212), fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF242B32),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Abstract()));
                        },
                        child: Image.asset('image1.png'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Abstract()));
                          },
                          child: Text(
                            'Abstract',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF242B32)),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Nature()));
                        },
                        child: Image.asset('image2.png'),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Nature()));
                          },
                          child: Text(
                            'Nature',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF242B32)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Image.asset('image3.png'),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Flower',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF242B32)),
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Image.asset('image4.png'),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Animal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF242B32)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
