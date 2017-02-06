#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVRegisterFileType : CDVPlugin
{}

+ (NSString*)cordovaVersion;

- (void)registerFileType:(CDVInvokedUrlCommand*)command;

@end