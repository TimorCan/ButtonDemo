//
//  ViewController.m
//  ButtonDemo
//
//  Created by juxi-ios on 16/6/29.
//  Copyright © 2016年 zhoucan. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+FixMutiClick.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * button = [[UIButton alloc]init];
    button.zc_acceptEvenInterval = 1;
    button.frame = CGRectMake(20, 20, 40, 20);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
}

- (void)buttonClick:(id)sender
{
    NSLog(@"点击了button");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
