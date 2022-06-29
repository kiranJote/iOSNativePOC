#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(ViewController,UIViewController)

RCT_EXTERN_METHOD(increment:(RCTResponseSenderBlock)callback)
@end
