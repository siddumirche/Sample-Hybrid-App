#import "Authentication.h"

@implementation Authentication

- (void) authenticate: (CDVInvokedUrlCommand*)command {
    NSString *ccoId = command.arguments[0];
    NSString *password = command.arguments[1];

    if([ccoId isEqualToString:@"admin"] || [password isEqualToString:@"admin"]) {
       CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary: @{ @"status": @"success" }];
        [self.commandDelegate sendPluginResult: result callbackId:command.callbackId];
    }else {
        NSDictionary *reason = @{@"status":@"error"};
        [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsDictionary: reason] callbackId:command.callbackId];

    }
}

@end