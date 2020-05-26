import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:graceful_widget_plugin/button/gf_button.dart';
import 'package:graceful_widget_plugin/loading/gf_loading.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('widget of test'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('各种类型的'),
                  GFButton(
                    height: 40,
                    width: 80,
                    radius: 0,
                    isShowIcon: true,
                    type: 'waring',
                    text: '这是按钮',
                  ),
                  GFButton(
                    onTap: () {
                      print('点击一次');
                    },
                    onLongPress: () {
                      print('长点击');
                    },
                    onDoubleTap: () {
                      print('点击两次');
                    },
                    type: 'normal',
                    text: '这是按钮',
                  ),
                  GFButton(
                    type: 'info',
                    text: '这是按钮',
                  ),
                  GFButton(
                    type: 'error',
                    text: '这是按钮',
                  ),
                  GFButton(
                    type: 'waring',
                    text: '这是按钮',
                  ),
                  GFButton(
                    text: '这是按钮',
                  ),
                  GFButton(
                    //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    startColor: Colors.purple,
                    endColor: Colors.purpleAccent,
                    icon: Icon(
                      Icons.forward,
                      color: Colors.white,
                    ),
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    startColor: Colors.purple,
                    endColor: Colors.purpleAccent,
                    icon: Icon(
                      Icons.panorama,
                      color: Colors.white,
                    ),
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    startColor: Colors.purple,
                    endColor: Colors.purpleAccent,
                    icon: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    startColor: Colors.purple,
                    endColor: Colors.purpleAccent,
                    icon: GFCupertinoActivityIndicator(
                      radius: 15,
                      color: Colors.red,
                      darkColor: Colors.red,
                    ),
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    width: 160,
                    height: 40,
                    //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    startColor: Colors.purple,
                    endColor: Colors.purpleAccent,
                    icon: GFCupertinoActivityIndicator(
                      radius: 15,
                      color: Colors.green,
                      darkColor: Colors.red,
                    ),
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    width: 160,
                    height: 40,
                    radius: 0,
                    //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    startColor: Colors.purple,
                    endColor: Colors.green,
                    icon: GFCupertinoActivityIndicator(
                      radius: 15,
                      color: Colors.white,
                      darkColor: Colors.white,
                    ),
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    width: 80,
                    height: 40,
                    radius: 0,
                    startColor: Colors.purple,
                    endColor: Colors.green,
                    isShowIcon: true,
                    text: '这是按钮',
                  ),
                  GFButton(
                    textColor: Colors.orange,
                    type: 'info',
                    text: '这是按钮',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
