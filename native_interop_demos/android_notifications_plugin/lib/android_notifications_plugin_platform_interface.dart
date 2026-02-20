import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_notifications_plugin_method_channel.dart';

abstract class AndroidNotificationsPluginPlatform extends PlatformInterface {
  /// Constructs a AndroidNotificationsPluginPlatform.
  AndroidNotificationsPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidNotificationsPluginPlatform _instance = MethodChannelAndroidNotificationsPlugin();

  /// The default instance of [AndroidNotificationsPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidNotificationsPlugin].
  static AndroidNotificationsPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidNotificationsPluginPlatform] when
  /// they register themselves.
  static set instance(AndroidNotificationsPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
