import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_notifications_plugin/android_notifications_plugin_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelAndroidNotificationsPlugin platform = MethodChannelAndroidNotificationsPlugin();
  const MethodChannel channel = MethodChannel('android_notifications_plugin');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
