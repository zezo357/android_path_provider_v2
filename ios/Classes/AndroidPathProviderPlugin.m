#import "AndroidPathProviderPlugin.h"
#if __has_include(<android_path_provider/android_path_provider-Swift.h>)
#import <android_path_provider/android_path_provider-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "android_path_provider-Swift.h"
#endif

@implementation AndroidPathProviderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidPathProviderPlugin registerWithRegistrar:registrar];
}
@end
