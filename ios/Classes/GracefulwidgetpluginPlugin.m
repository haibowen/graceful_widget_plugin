#import "GracefulwidgetpluginPlugin.h"
#if __has_include(<gracefulwidgetplugin/gracefulwidgetplugin-Swift.h>)
#import <gracefulwidgetplugin/gracefulwidgetplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gracefulwidgetplugin-Swift.h"
#endif

@implementation GracefulwidgetpluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGracefulwidgetpluginPlugin registerWithRegistrar:registrar];
}
@end
