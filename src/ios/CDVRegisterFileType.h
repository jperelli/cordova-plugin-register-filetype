#import <Cordova/CDVPlugin.h>

@interface CDVRegisterFileType : CDVPlugin

@property (nonatomic, strong) NSString *callbackID;

- (void)registerFileType:(CDVInvokedUrlCommand*)command;

@end
