//
//  MeViewController.m
//  iCode
//
//  Created by SoolyChristina on 16/10/29.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import "MeViewController.h"
#import "UserInfoTableViewCell.h"
#import "NomalTableViewCell.h"
#import "MeMenu.h"

@interface MeViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataArrs; //数据

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self initData];
}

-(void)initUI{
    self.navigationController.title = @"我的";
    [self.view addSubview:self.tableView];
}

-(void)initData{
    
}

-(NSMutableArray *)dataArrs{
    if (_dataArrs == nil) {
        _dataArrs = [NSMutableArray array];
        self.dataArrs = [MeMenu menuArrs];
    }
    return _dataArrs;
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
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return 2;
    }else{
        return 1;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        //创建用户信息cell
        return [UserInfoTableViewCell userInfoTableViewCellWithTableView:tableView];
    }else{
        NomalTableViewCell *cell = [NomalTableViewCell nomalTableViewCellWithTableView:tableView];
        //获取数据
        if (indexPath.section == 1) {
            cell.meMenu = [self.dataArrs objectAtIndex:indexPath.row];
        }else if (indexPath.section == 2){
            cell.meMenu = [self.dataArrs objectAtIndex:indexPath.row + 2];
        }
        return cell;
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
