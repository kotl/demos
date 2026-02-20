import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_notifications_plugin_platform_interface.dart';

/// An implementation of [AndroidNotificationsPluginPlatform] that uses method channels.
class MethodChannelAndroidNotificationsPlugin extends AndroidNotificationsPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_notifications_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
