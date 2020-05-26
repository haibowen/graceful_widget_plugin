//
//import 'package:flutter/material.dart';
//
//void main(){
//
//  runApp(VideoApp());
//}
//
//class VideoApp extends StatefulWidget {
//  @override
//  _VideoAppState createState() => _VideoAppState();
//}
//
//class _VideoAppState extends State<VideoApp> {
//
//  var viewPlayerController;
//
//  @override
//  void initState() {
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    var x = 0.0;
//    var y = 0.0;
//    var width = 400.0;
//    var height = width * 9.0 / 16.0;
//
//    GFVideoPlayer videoPlayer = new GFVideoPlayer(
//        onCreated: onViewPlayerCreated,
//        x: x,
//        y: y,
//        width: width,
//        height: height
//    );
//    return MaterialApp(
//      home: Scaffold(
//          appBar: AppBar(
//            title: const Text('Plugin example app'),
//          ),
//          body: Container(
//              child: videoPlayer,
//              width: width,
//              height: height
//          )
//      ),
//    );
//  }
//
//  void onViewPlayerCreated(viewPlayerController) {
//    this.viewPlayerController = viewPlayerController;
//    this.viewPlayerController.loadUrl("http://jzvd.nathen.cn/c6e3dc12a1154626b3476d9bf3bd7266/6b56c5f0dc31428083757a45764763b0-5287d2089db37e62345123a1be272f8b.mp4");
//  }
//}
//
