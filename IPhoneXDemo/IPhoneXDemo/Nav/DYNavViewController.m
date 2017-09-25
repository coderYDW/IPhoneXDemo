//
//  DYNavViewController.m
//  IPhoneXDemo
//
//  Created by Apple on 2017/9/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "DYNavViewController.h"

@interface DYNavViewController ()

@end

@implementation DYNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.prefersLargeTitles = YES;
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAutomatic;
    self.navigationItem.hidesSearchBarWhenScrolling = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
