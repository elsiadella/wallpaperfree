// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  showPopUp(BuildContext context, bool strict, bool isForm, Function? funct,
      String title, String? yesText, String cancelText, bool isVideo) async {
    TextEditingController outsideController = TextEditingController();

    return await showGeneralDialog(
      transitionDuration: Duration(milliseconds: 150),
      barrierLabel: '',
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Transform.scale(
              scale: a1.value,
              child: Opacity(
                opacity: a1.value,
                child: Center(
                  child: Material(
                    type: MaterialType.transparency,
                    color: Colors.transparent,
                    child: Container(
                      // padding: EdgeInsets.all(20),
                      constraints: BoxConstraints(maxWidth: 300, minWidth: 100),
                      decoration: BoxDecoration(
                        color: Color(0xFF242B32),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  top: 20.0,
                                  bottom: 10.0),
                              child: Center(
                                child: Text(
                                  'Beautiful Scene',
                                  style: TextStyle(
                                      color: Color(0xFFFF6212),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'By Albert',
                                    style: TextStyle(
                                        color: Color(0xFFFF6212),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '2.3MB',
                                    style: TextStyle(
                                        color: Color(0xFFFF6212),
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                              width: 150,
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFFFF6212),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Download",
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      context: context,
      pageBuilder: (context, a1, a2) {
        return Container();
      },
    );
  }

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
            onPressed: () {
              showPopUp(context, false, false, () => print('function clicked'),
                  'title', 'yes', 'cancel', false);
            },
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
