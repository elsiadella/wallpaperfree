// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  // String dropdownValue = 'One';
  String dropdownvalue = 'High Resolution';

  var items = [
    'None',
    'Standard Resolution',
    'High Resolution',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242B32),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(
                color: Color(0xFFFF6212), fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF242B32),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 20.0),
            child: Text(
              'Notifications',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6212),
                fontSize: 16.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text(
                  'New Wallpaper',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFCCCCCC),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: FlutterSwitch(
                  activeColor: Color(0xFFFF6212),
                  value: status1,
                  onToggle: (val) {
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 5.0),
                child: Text(
                  'New Version',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFCCCCCC),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0, top: 5.0),
                child: FlutterSwitch(
                  activeColor: Color(0xFFFF6212),
                  value: status2,
                  onToggle: (val) {
                    setState(() {
                      status2 = val;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              'Downloads',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6212),
                fontSize: 16.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Use Wi-fi for Download',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFCCCCCC),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: FlutterSwitch(
                  activeColor: Color(0xFFFF6212),
                  value: status3,
                  onToggle: (val) {
                    setState(() {
                      status3 = val;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 5.0),
                child: Text(
                  'Download Folder',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFCCCCCC),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0, top: 5.0),
                child: Text(
                  '/wowwallpaper',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFCCCCCC),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 5.0),
                child: Text(
                  'Download Resolution',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFCCCCCC),
                    fontSize: 18.0,
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(left: 20.0, top: 5.0),
              //   child: DropdownButton<String>(
              //     items: <String>['A', 'B', 'C', 'D'].map((String value) {
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         child: Text(value),
              //       );
              //     }).toList(),
              //     onChanged: (_) {},
              //   ),
              // )
              Container(
                margin: EdgeInsets.only(right: 20.0, top: 5.0),
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,
                  style: TextStyle(fontSize: 14.0, color: Color(0xFFCCCCCC), fontWeight: FontWeight.bold),
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xFFFF6212),),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6212),
                fontSize: 16.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
               margin: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Version',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFCCCCCC),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Text(
                  '1.0.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFCCCCCC),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
