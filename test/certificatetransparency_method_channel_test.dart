import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:certificatetransparency/src/certificatetransparency_method_channel.dart';

void main() {
  MethodChannelCertificatetransparency platform =
      MethodChannelCertificatetransparency();
  const MethodChannel channel = MethodChannel('certificatetransparency');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
