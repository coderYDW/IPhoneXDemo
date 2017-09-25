//
//  DYTableViewTwoController.m
//  IPhoneXDemo
//
//  Created by Apple on 2017/9/22.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "DYTableViewTwoController.h"

@interface DYTableViewTwoController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation DYTableViewTwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView = tableView;
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"tableView"];
    self.tableView.insetsContentViewsToSafeArea = NO;
    self.tableView.insetsLayoutMarginsFromSafeArea = NO;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    
}

#pragma mark - 数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableView" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"section:%zd, row:%zd",indexPath.section, indexPath.row];
    
    return cell;
}

@end
