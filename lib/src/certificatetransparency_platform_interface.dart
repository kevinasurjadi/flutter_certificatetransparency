import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'certificatetransparency_method_channel.dart';

abstract class CertificatetransparencyPlatform extends PlatformInterface {
  /// Constructs a CertificatetransparencyPlatform.
  CertificatetransparencyPlatform() : super(token: _token);

  static final Object _token = Object();

  static CertificatetransparencyPlatform _instance = MethodChannelCertificatetransparency();

  /// The default instance of [CertificatetransparencyPlatform] to use.
  ///
  /// Defaults to [MethodChannelCertificatetransparency].
  static CertificatetransparencyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CertificatetransparencyPlatform] when
  /// they register themselves.
  static set instance(CertificatetransparencyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
