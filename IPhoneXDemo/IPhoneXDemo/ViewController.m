//
//  ViewController.m
//  IPhoneXDemo
//
//  Created by Apple on 2017/9/22.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "sys/utsname.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"%@",NSStringFromUIEdgeInsets(self.view.safeAreaInsets));
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceModel = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSLog(@"deviceModel : %@",deviceModel);
    
    
#ifdef __IPHONE_11_0
    NSLog(@"你好,这里是iOS11");
#else
    NSLog(@"你好,这个系统不是最新的")
#endif
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"11= %@",NSStringFromUIEdgeInsets(self.view.safeAreaInsets));
}


@end
