// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper/screens/abstract.dart';
import 'package:wallpaper/screens/category_seeall.dart';
import 'package:wallpaper/screens/nature.dart';
import 'package:wallpaper/screens/new_seeall.dart';
import 'package:wallpaper/screens/settings_page.dart';

class Wallpaper extends StatefulWidget {
  const Wallpaper({Key? key}) : super(key: key);

  @override
  _WallpaperState createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF242B32),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // height: 100.0,
              color: Color(0xFF242B32),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('image_main.png'),
                      Spacer(
                        flex: 2,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings()));
                        },
                        icon: SvgPicture.asset('assets/icon_settings.svg'),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // border: Border(
                      //   top: BorderSide(color: Color(0xFFCCCCCC)),
                      //   right: BorderSide(color: Color(0xFFCCCCCC)),
                      //   bottom: BorderSide(color: Color(0xFFCCCCCC)),
                      //   left: BorderSide(color: Color(0xFFCCCCCC)),
                      // ),
                      color: Color(0xFFCCCCCC),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    padding: EdgeInsets.all(10.0),

                    // margin:
                    //     EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    width: double.infinity,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            // style: TextStyle(fontSize: 16.0),
                            decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.only(left: 10.0),
                              hintText: 'search wallpaper what you want',
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          splashRadius: 25.0,
                          // icon:
                          // Icon(Icons.search_sharp, color: Color(0xFF242B32)),
                          icon: SvgPicture.asset('assets/icon_search.svg'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Category',
                    style: TextStyle(
                        color: Color(0xFF242B32), fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Categoryseeall()));
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFFFF6212),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              // margin: EdgeInsets.all(20.0),
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Abstract()));},
                          child: Image.asset('image_1.png'),
                        ),
                        TextButton(
                            onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Abstract()));},
                            child: Text(
                              'Abstract',
                              style: TextStyle(
                                  color: Color(0xFF242B32),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Nature()));},
                          child: Image.asset('image_2.png'),
                        ),
                        TextButton(
                            onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Nature()));},
                            child: Text(
                              'Nature',
                              style: TextStyle(
                                  color: Color(0xFF242B32),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Image.asset('image_3.png'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Flower',
                              style: TextStyle(
                                  color: Color(0xFF242B32),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Image.asset('image_3.png'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Flower',
                              style: TextStyle(
                                  color: Color(0xFF242B32),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Image.asset('image_3.png'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Flower',
                              style: TextStyle(
                                  color: Color(0xFF242B32),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Center(
            //         child: TextButton(
            //           onPressed: () {},
            //           child: Text(
            //             'Abstract',
            //             style: TextStyle(
            //                 color: Color(0xFF242B32),
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Center(
            //         child: TextButton(
            //           onPressed: () {},
            //           child: Text(
            //             'Nature',
            //             style: TextStyle(
            //                 color: Color(0xFF242B32),
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Center(
            //         child: TextButton(
            //           onPressed: () {},
            //           child: Text(
            //             'Flower',
            //             style: TextStyle(
            //                 color: Color(0xFF242B32),
            //                 fontWeight: FontWeight.bold),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Center(
            //         child: Text(
            //           'Abstract',
            //           style: TextStyle(
            //               color: Color(0xFF242B32), fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Center(
            //         child: Text(
            //           'Nature',
            //           style: TextStyle(
            //               color: Color(0xFF242B32), fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Center(
            //         child: Text(
            //           'Flower',
            //           style: TextStyle(
            //               color: Color(0xFF242B32), fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'New',
                    style: TextStyle(
                        color: Color(0xFF242B32), fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => New()));
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFFFF6212),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_4.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_5.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_6.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_7.png'),
                  ),
                ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Image.asset('image_8.png'),
                //   ),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Abstract',
                    style: TextStyle(
                        color: Color(0xFF242B32), fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Abstract()));
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFFFF6212),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_9.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_10.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_11.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_12.png'),
                  ),
                ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Image.asset('image_13.png'),
                //   ),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Nature',
                    style: TextStyle(
                        color: Color(0xFF242B32), fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nature()));
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFFFF6212),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_14.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_15.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_16.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_17.png'),
                  ),
                ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Image.asset('image_18.png'),
                //   ),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Nature',
                    style: TextStyle(
                        color: Color(0xFF242B32), fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFFFF6212),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_14.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_15.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_16.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image_17.png'),
                  ),
                ),
                // Expanded(
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Image.asset('image_18.png'),
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 75.0,
            ),
          ],
        ),
      ),
    );
  }
}
