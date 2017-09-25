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
@property (nonatomic, strong) UISearchController *searchViewController;

@end

@implementation DYTableViewTwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.additionalSafeAreaInsets = UIEdgeInsetsMake(45, 0, 100, 0);
    
    //self.view.directionalLayoutMargins = NSDirectionalEdgeInsetsMake(50, 20, 100, 20);
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView = tableView;
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"tableView"];
    self.tableView.insetsContentViewsToSafeArea = NO;
    self.tableView.insetsLayoutMarginsFromSafeArea = NO;
    
//    self.tableView.separatorInsetReference = UITableViewSeparatorInsetFromCellEdges;
//    self.tableView.separatorInset = UIEdgeInsetsMake(0, 50, 0, 100);

    
    //self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentScrollableAxes;
    
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"%s", __FUNCTION__);
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

#pragma mark - tableView代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- ( UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    //删除
    UIContextualAction *deleteRowAction = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleDestructive title:@"delete" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        //[self.titleArr removeObjectAtIndex:indexPath.row];
        NSLog(@"删除");
        completionHandler (YES);
    }];
    
    deleteRowAction.image = [[UIImage imageNamed:@"icon_usecar_help"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    deleteRowAction.backgroundColor = [UIColor redColor];
    
    UISwipeActionsConfiguration *config = [UISwipeActionsConfiguration configurationWithActions:
                                           @[deleteRowAction]];
    return config;
}

- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
    //打开
    UIContextualAction *openRowAction = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:@"open" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        NSLog(@"打开");
        completionHandler (YES);
    }];
    
    openRowAction.title = @"打开";
    
    openRowAction.backgroundColor = [UIColor redColor];
    
    UIContextualAction *deleteRowAction = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleDestructive title:@"delete" handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        //[self.titleArr removeObjectAtIndex:indexPath.row];
        NSLog(@"删除");
        completionHandler (YES);
    }];
    
    deleteRowAction.image = [[UIImage imageNamed:@"icon_usecar_help"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    deleteRowAction.backgroundColor = [UIColor blueColor];
    
    UISwipeActionsConfiguration *config = [UISwipeActionsConfiguration configurationWithActions:
                                           @[openRowAction,deleteRowAction]];
    return config;
    
    
}

@end
