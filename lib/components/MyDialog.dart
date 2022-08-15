import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({Key? key, this.title = "", this.content = ""}) : super(key: key);

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (timer) {
      Navigator.pop(context);
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(title),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  content,
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
