import 'package:flutter_test/flutter_test.dart';
import 'package:android_notifications_plugin/android_notifications_plugin.dart';
import 'package:android_notifications_plugin/android_notifications_plugin_platform_interface.dart';
import 'package:android_notifications_plugin/android_notifications_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidNotificationsPluginPlatform
    with MockPlatformInterfaceMixin
    implements AndroidNotificationsPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AndroidNotificationsPluginPlatform initialPlatform = AndroidNotificationsPluginPlatform.instance;

  test('$MethodChannelAndroidNotificationsPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidNotificationsPlugin>());
  });

  test('getPlatformVersion', () async {
    AndroidNotificationsPlugin androidNotificationsPlugin = AndroidNotificationsPlugin();
    MockAndroidNotificationsPluginPlatform fakePlatform = MockAndroidNotificationsPluginPlatform();
    AndroidNotificationsPluginPlatform.instance = fakePlatform;

    expect(await androidNotificationsPlugin.getPlatformVersion(), '42');
  });
}
