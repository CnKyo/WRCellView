//
//  DemoListController.m
//  CodeDemo
//
//  Created by wangrui on 2017/4/14.
//  Copyright © 2017年 wangrui. All rights reserved.
//

#import "DemoListController.h"
#import "ViewController.h"

@interface DemoListController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation DemoListController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"DemoList";
    [self.view addSubview:self.tableView];
}

#pragma mark - tableview delegate / dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                   reuseIdentifier:nil];
    NSString *str = nil;
    switch (indexPath.row) {
        case 0:
            str = @"常用Style";
            break;
        case 1:
            str = @"超过临界点移动导航栏";
            break;
        case 2:
            str = @"超过临界点多少，移动导航栏多少(不会超过44)";
            break;
        case 3:
            str = @"类似qq应用空间效果";
            break;
        case 4:
            str = @"类似QQ空间效果";
            break;
            
        default:
            break;
    }
    cell.textLabel.text = str;
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            ViewController *basicVC = [ViewController new];
            [self.navigationController pushViewController:basicVC animated:YES];
        }
            break;
        case 1:
        {
            ViewController *basicVC = [ViewController new];
            [self.navigationController pushViewController:basicVC animated:YES];
        }
            break;
        case 2:
        {
            ViewController *basicVC = [ViewController new];
            [self.navigationController pushViewController:basicVC animated:YES];
        }
            break;
        case 3:
        {
            ViewController *basicVC = [ViewController new];
            [self.navigationController pushViewController:basicVC animated:YES];
        }
            break;
        case 4:
        {
            ViewController *basicVC = [ViewController new];
            [self.navigationController pushViewController:basicVC animated:YES];
        }
            break;
        default:
            break;
    }
}

#pragma mark - getter / setter
- (UITableView *)tableView
{
    if (_tableView == nil) {
        CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        _tableView = [[UITableView alloc] initWithFrame:frame
                                                  style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

@end
