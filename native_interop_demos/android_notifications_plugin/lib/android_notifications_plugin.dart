
import 'android_notifications_plugin_platform_interface.dart';

class AndroidNotificationsPlugin {
  Future<String?> getPlatformVersion() {
    return AndroidNotificationsPluginPlatform.instance.getPlatformVersion();
  }
}
