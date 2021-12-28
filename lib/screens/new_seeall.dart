// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallpaper/screens/download_image.dart';

class New extends StatefulWidget {
  const New({ Key? key }) : super(key: key);

  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: AppBar(
        title: Center(
          child: Text(
            'New',
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
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Download()));},
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/image3.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Image.asset('assets/image4.png'),
                    ),
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