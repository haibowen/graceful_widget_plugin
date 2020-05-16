import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graceful_widget_plugin/graceful_widget_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('graceful_widget_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GracefulWidgetPlugin.platformVersion, '42');
  });
}
