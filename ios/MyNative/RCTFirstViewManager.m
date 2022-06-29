//
//  RCTFirstViewManager.m
//  MyNative
//
//  Created by Kiran jote on 09/06/22.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"
#import "React/RCTComponentEvent.h"
#import "MyNative-Swift.h"

@interface RCTFirstViewManager : RCTViewManager
@end

@implementation RCTFirstViewManager

RCT_EXPORT_MODULE(RCTFirstViewManager)

- (UIView *)view {
  UILabel *proxy = [[UILabel alloc] initWithFrame:CGRectMake(-100, -100, 200, 30)];
  proxy.text = @"Hey There, I am Native Label";
  proxy.numberOfLines = 0;
  UIView *myView = [[UIView alloc] init];
  [myView addSubview:proxy];
  return myView;
}

@end
