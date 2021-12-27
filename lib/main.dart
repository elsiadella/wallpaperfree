// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpaper/screens/wallpaper_page.dart';
import 'package:wallpaper/screens/livewallpaper_page.dart';
import 'package:wallpaper/screens/mywallpaper_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void tapIndex(index) {
    setState(() {
      _controller.jumpToPage(index);
    });
  }

  PageController _controller = PageController();

  List<BottomNavigationBarItem> bottomNavList() {
    return [
      BottomNavigationBarItem(
        label: 'Wallpaper',
        icon: SvgPicture.asset(
          'assets/icon_wallpapermenu.svg',
          color: _currentIndex == 0 ? Colors.white : Colors.grey[400],
        ),
      ),
      BottomNavigationBarItem(
        label: 'Live Wallpaper',
        icon: SvgPicture.asset(
          'assets/icon_livewallpapermenu.svg',
          color: _currentIndex == 1 ? Colors.white : Colors.grey[400],
        ),
      ),
      BottomNavigationBarItem(
        label: 'My Wallpaper',
        icon: SvgPicture.asset(
          'assets/icon_mywallpapermenu.svg',
          color: _currentIndex == 2 ? Colors.white : Colors.grey[400],
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Wallpaper(),
              Livewallpaper(),
              Mywallpaper(),
            ],
            onPageChanged: (page) {
              setState(() {
                _currentIndex = page;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              onTap: (index) {
                tapIndex(index);
              },
              currentIndex: _currentIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              backgroundColor: Color(0xFF242B32),
              items: bottomNavList(),
            ),
          ),
        ],
      ),
    );
  }
}