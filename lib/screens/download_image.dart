// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Wallpaper',
            style: TextStyle(
                color: Color(0xFFFF6212), fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF242B32),
        actions: <Widget>[
          IconButton(
            splashRadius: 25.0,
            icon: Icon(Icons.download),
            onPressed: () {},
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: Image.asset('new.jpg'),
    );
  }
}
