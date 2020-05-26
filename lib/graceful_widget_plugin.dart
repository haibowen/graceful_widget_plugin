import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GracefulWidgetPlugin {
  static const MethodChannel _channel =
      const MethodChannel('graceful_widget_plugin');

  //获取设备的版本
  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> openVideoView(String url) async {
    assert(url != null);
    return _channel.invokeMethod('loadUrl', url);
  }
}

