//
//  MeViewController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/29.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "MeViewController.h"
#import "UserInfoTableViewCell.h"
#import "NomalTableViewCell.h"

@interface MeViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

-(void)initUI{
    [self.view addSubview:self.tableView];
}

-(void)initData{
    
}

-(UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        //取消cell的分割线
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //禁止滑动
        _tableView.scrollEnabled = NO;

    }
    return _tableView;
}

#pragma mark - tableView方法

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        //创建用户信息cell
        NSLog(@"0");
        return [UserInfoTableViewCell userInfoTableViewCellWithTableView:tableView];
    }else{
        NSLog(@"1");
        return [NomalTableViewCell nomalTableViewCellWithTableView:tableView];
    }
}

//row的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 70;
    }else{
        return 44;
    }
}

//section头部间距
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 25;
}

//section底部间距
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//    return 25;
//}

@end
