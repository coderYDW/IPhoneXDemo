//
//  DYOneViewController.m
//  IPhoneXDemo
//
//  Created by Apple on 2017/9/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "DYOneViewController.h"

@interface DYOneViewController ()

@end

@implementation DYOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewRespectsSystemMinimumLayoutMargins = NO;
    self.view.directionalLayoutMargins = NSDirectionalEdgeInsetsMake(10, 200, 40, 50);
    
}

@end
