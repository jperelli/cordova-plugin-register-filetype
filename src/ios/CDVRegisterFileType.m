#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "CDVRegisterFileType.h"

@interface CDVRegisterFileType () {}
@end

@implementation CDVRegisterFileType

- (void)registerFileType:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"HOLA"];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end