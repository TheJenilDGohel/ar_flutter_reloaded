#import "ArFlutterPlugin.h"
#if __has_include(<ar_flutter_reloaded/ar_flutter_reloaded-Swift.h>)
#import <ar_flutter_reloaded/ar_flutter_reloaded-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ar_flutter_reloaded-Swift.h"
#endif

@implementation ArFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftArFlutterPlugin registerWithRegistrar:registrar];
}
@end
