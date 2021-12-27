// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Livewallpaper extends StatefulWidget {
  const Livewallpaper({Key? key}) : super(key: key);

  @override
  _LivewallpaperState createState() => _LivewallpaperState();
}

class _LivewallpaperState extends State<Livewallpaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Live Wallpaper',
            style: TextStyle(
                color: Color(0xFFFF6212), fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF242B32),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image1.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image2.png'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image3.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset('image4.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
