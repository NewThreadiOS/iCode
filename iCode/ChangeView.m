//
//  ChangeView.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/3.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "ChangeView.h"

@interface ChangeView ()

@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

NSInteger type;

@implementation ChangeView

-(instancetype)initWithXib{
    self = [[[NSBundle mainBundle]loadNibNamed:@"ChangeView" owner:nil options:nil]lastObject];
    self.frame = CGRectMake(0, 0, 280, 140);
    return self;
}

+ (ChangeView *)changeViewWithTittleName:(NSString *)name andDataStr:(NSString *)str{
    ChangeView *changeView = [[ChangeView alloc]initWithXib];
    changeView.tittleLabel.text = name;
    changeView.dataStr = str;
    if ([name hasSuffix:@"姓名"]) {
        type = 0;
    }else if ([name hasSuffix:@"昵称"]){
        type = 1;
    }else{
        type = 2;
    }
    return changeView;
}

-(void)setDataStr:(NSString *)dataStr{
    _dataStr = dataStr;
    self.textField.text = dataStr;
}

- (IBAction)okClick:(id)sender {
    if (type == 0) {
        [self.userInfoVC.dataDic removeObjectForKey:@"userName"];
        [self.userInfoVC.dataDic setObject:self.textField.text forKey:@"userName"];
        [self.userInfoVC.tableView reloadData];
    }else if (type == 1){
        [self.userInfoVC.dataDic removeObjectForKey:@"userNickName"];
        [self.userInfoVC.dataDic setObject:self.textField.text forKey:@"userNickName"];
        [self.userInfoVC.tableView reloadData];
    }else{
        [self.userInfoVC.dataDic removeObjectForKey:@"userMoto"];
        [self.userInfoVC.dataDic setObject:self.textField.text forKey:@"userMoto"];
        [self.userInfoVC.tableView reloadData];
    }
    [self.userInfoVC lew_dismissPopupView];
}
- (IBAction)cancelClick:(id)sender {
    
    [self.userInfoVC lew_dismissPopupView];
}

@end
