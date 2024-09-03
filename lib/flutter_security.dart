
import 'flutter_security_platform_interface.dart';

class FlutterSecurity {
  Future<String?> getPlatformVersion() {
    return FlutterSecurityPlatform.instance.getPlatformVersion();
  }
}
