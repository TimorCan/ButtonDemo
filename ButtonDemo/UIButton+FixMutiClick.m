//
//  UIButton+FixMutiClick.m
//  ButtonDemo
//
//  Created by juxi-ios on 16/6/29.
//  Copyright © 2016年 zhoucan. All rights reserved.
//

#import "UIButton+FixMutiClick.h"
#import <objc/runtime.h>
@implementation UIButton (FixMutiClick)

static const char * UIControl_acceptEvenIntercal = "UIControl_acceptEvenIntercal";

static const char * UIControl_acceptEvenTime = "UIControl_acceptEvenTime";

- (NSTimeInterval)zc_acceptEvenInterval
{
    return [objc_getAssociatedObject(self, UIControl_acceptEvenIntercal) doubleValue];
}

- (void)setZc_acceptEvenInterval:(NSTimeInterval)zc_acceptEvenInterval
{
    objc_setAssociatedObject(self, UIControl_acceptEvenIntercal, @(zc_acceptEvenInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTimeInterval)zc_acceptEvenTime
{
    return [objc_getAssociatedObject(self, UIControl_acceptEvenTime) doubleValue];
}

- (void)setZc_acceptEvenTime:(NSTimeInterval)zc_acceptEvenTime
{
    objc_setAssociatedObject(self, UIControl_acceptEvenTime, @(zc_acceptEvenTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (void)load
{
    
    Method before = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method after = class_getInstanceMethod(self, @selector(zc_sendAction:to:forEvent:));
    method_exchangeImplementations(before, after);
    
}


- (void)zc_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    if ([NSDate date].timeIntervalSince1970  - self.zc_acceptEvenTime<self.zc_acceptEvenInterval) {
        return;
    }
    
    
    if (self.zc_acceptEvenInterval>0) {
        self.zc_acceptEvenTime = [NSDate date].timeIntervalSince1970;
    }
    
    [self zc_sendAction:action to:target forEvent:event];
}

@end
