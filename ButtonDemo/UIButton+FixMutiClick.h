//
//  UIButton+FixMutiClick.h
//  ButtonDemo
//
//  Created by juxi-ios on 16/6/29.
//  Copyright © 2016年 zhoucan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (FixMutiClick)

//重复点击的间隔
@property (nonatomic , assign) NSTimeInterval zc_acceptEvenInterval;

@property (nonatomic , assign) NSTimeInterval zc_acceptEvenTime;


@end
