//
//  UserInfoViewController.m
//  iCode
//
//  Created by SoolyChristina on 16/10/30.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "UserInfoViewController.h"
#import "IconTableViewCell.h"

@interface UserInfoViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@end

@implementation UserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self initData];
}

-(void)initUI{
    self.title = @"个人信息";
    [self.view addSubview:self.tableView];
}

-(void)initData{
    
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
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
    if (section == 0) {
        return 3;
    }else{
        return 3;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==0 && indexPath.row == 0) {
        IconTableViewCell *cell = [IconTableViewCell iconTableViewCellWithTableView:tableView];
        return cell;
    }else{
        static NSString *reuseID = @"reuseID2";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseID];
            cell.detailTextLabel.font = [UIFont systemFontOfSize:16];
        }
        cell.textLabel.text = @"测试";
        cell.detailTextLabel.text = @"这是详细描述";
        return cell;
    }
}

//row的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==0 && indexPath.row == 0) {
        return iconRowHeight;
    }else{
        return nomalRowHeight;
    }
}

//section头部间距
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 25;
}


@end
