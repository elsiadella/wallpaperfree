// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Abstract extends StatefulWidget {
  const Abstract({ Key? key }) : super(key: key);

  @override
  _AbstractState createState() => _AbstractState();
}

class _AbstractState extends State<Abstract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCCCCCC),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Abstract',
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
      ),
    );
  }
}