// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mywallpaper extends StatefulWidget {
  const Mywallpaper({Key? key}) : super(key: key);

  @override
  _MywallpaperState createState() => _MywallpaperState();
}

class _MywallpaperState extends State<Mywallpaper> {
  bool isWallpaper = true;

  void switchWallpaper(bool wallpaper) {
    setState(() {
      isWallpaper = wallpaper;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              isWallpaper
                  ? Column(
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Container(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Image.asset('assets/image1.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Image.asset('assets/image1.png'),
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Image.asset('assets/image2.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: Color(0xFF242B32),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5.0),
                          // padding: EdgeInsets.all(10.0),
                          child: Text(
                            'My Wallpaper',
                            style: TextStyle(
                                color: Color(0xFFFF6212),
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0),
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    switchWallpaper(true);
                                  },
                                  child: Text(
                                    'Wallpaper',
                                    style: TextStyle(
                                        color: isWallpaper
                                            ? Color(0xFFFF6212)
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    switchWallpaper(false);
                                  },
                                  child: Text(
                                    'Live Wallpaper',
                                    style: TextStyle(
                                        color: !isWallpaper
                                            ? Color(0xFFFF6212)
                                            : Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
