import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'certificatetransparency_platform_interface.dart';

/// An implementation of [CertificatetransparencyPlatform] that uses method channels.
class MethodChannelCertificatetransparency extends CertificatetransparencyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('certificatetransparency');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
