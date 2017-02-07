#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "CDVRegisterFileType.h"


@implementation CDVRegisterFileType

- (void)handleOpenURL:(NSNotification*)notification
{
    NSURL* url = [notification object];
    if (url) {
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[url absoluteString]];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callbackID];
    }
}


- (void)registerFileType:(CDVInvokedUrlCommand*)command
{
    self.callbackID = command.callbackId;
}

@end
