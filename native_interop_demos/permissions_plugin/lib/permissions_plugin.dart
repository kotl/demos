
import 'permissions_plugin_platform_interface.dart';

class PermissionsPlugin {
  Future<String?> getPlatformVersion() {
    return PermissionsPluginPlatform.instance.getPlatformVersion();
  }
}
