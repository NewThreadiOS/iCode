//
//  CodeViewController.m
//  iCode
//
//  Created by SoolyChristina on 16/10/29.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import "CodeViewController.h"
#import "CodeCircleTableViewCell.h"
#import "CodeCircleViewModel.h"

@interface CodeViewController () <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) UITableView *tableView;

@property (nonatomic ,strong) NSMutableArray *codeCircles;      //数据模型
@property (nonatomic ,strong) NSMutableArray *codeCircleFrames; //ViewModel(包含cell子控件的Frame)

@end

@implementation CodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    [self setData];
}

- (void)setUI{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    self.title = @"Code圈";
    //添加右边btn
    UIButton *rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 25, 25)];
    [rightBtn setImage:[UIImage imageNamed:@"navigationbar_push"] forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:rightBtn];
}

- (void)setData{
    
}

-(UITableView *)tableView{
    if (_tableView == nil) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView = tableView;
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor grayColor];
        _tableView.backgroundColor = iCodeTableviewBgColor;
    }
    return _tableView;
}

- (NSMutableArray *)codeCircles{
    if (!_codeCircles) {
        _codeCircles = [NSMutableArray array];
        _codeCircles = [CodeCircle codeCircles];
    }
    return _codeCircles;
}

- (NSMutableArray *)codeCircleFrames{
    if (!_codeCircleFrames) {
        _codeCircleFrames = [NSMutableArray array];
        
        //数据模型 => ViewModel(包含cell子控件的Frame)
        for (CodeCircle *codeCircle in self.codeCircles) {
            CodeCircleViewModel *codeCircleFrame = [[CodeCircleViewModel alloc] init];
            codeCircleFrame.codeCircle = codeCircle;
            [_codeCircleFrames addObject:codeCircleFrame];
        }
        NSLog(@"%@",_codeCircleFrames);
    }
    return _codeCircleFrames;
}

#pragma mark - tableView的方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSLog(@"%@",self.codeCircleFrames);
    return self.codeCircles.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CodeCircleTableViewCell *cell = [CodeCircleTableViewCell codeCircleCellWithTableView:tableView];
    cell.codeCircleFrame = self.codeCircleFrames[indexPath.section];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //取数据
    CodeCircleViewModel *codeCircleFrame = self.codeCircleFrames[indexPath.section];
    return codeCircleFrame.cellHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return circleCellMargin;
}
@end
