import 'package:flutter_test/flutter_test.dart';
import 'package:certificatetransparency/certificatetransparency.dart';
import 'package:certificatetransparency/src/certificatetransparency_platform_interface.dart';
import 'package:certificatetransparency/src/certificatetransparency_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCertificatetransparencyPlatform
    with MockPlatformInterfaceMixin
    implements CertificatetransparencyPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CertificatetransparencyPlatform initialPlatform =
      CertificatetransparencyPlatform.instance;

  test('$MethodChannelCertificatetransparency is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelCertificatetransparency>());
  });

  test('getPlatformVersion', () async {
    Certificatetransparency certificatetransparencyPlugin =
        Certificatetransparency();
    MockCertificatetransparencyPlatform fakePlatform =
        MockCertificatetransparencyPlatform();
    CertificatetransparencyPlatform.instance = fakePlatform;

    expect(await certificatetransparencyPlugin.getPlatformVersion(), '42');
  });
}
