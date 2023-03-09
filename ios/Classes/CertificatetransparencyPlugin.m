#import "CertificatetransparencyPlugin.h"
#if __has_include(<certificatetransparency/certificatetransparency-Swift.h>)
#import <certificatetransparency/certificatetransparency-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "certificatetransparency-Swift.h"
#endif

@implementation CertificatetransparencyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCertificatetransparencyPlugin registerWithRegistrar:registrar];
}
@end
