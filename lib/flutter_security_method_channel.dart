import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_security_platform_interface.dart';

/// An implementation of [FlutterSecurityPlatform] that uses method channels.
class MethodChannelFlutterSecurity extends FlutterSecurityPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_security');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
