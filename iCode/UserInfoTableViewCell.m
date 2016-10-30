//
//  UserInfoTableViewCell.m
//  iCode
//
//  Created by SoolyChristina on 2016/10/29.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import "UserInfoTableViewCell.h"

@interface UserInfoTableViewCell ()

/**
 *  头像
 */
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

/**
 *  用户昵称
 */
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

/**
 *  详细信息
 */
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;


@end

@implementation UserInfoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

+(UserInfoTableViewCell *)userInfoTableViewCellWithTableView:(UITableView *)tableView{
    NSString *reuseID = @"reuseID";
    UserInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"UserInfoTableViewCell" owner:nil options:nil]lastObject];
        
    }
    return cell;
}

-(UserInfoTableViewCell *)userInfoTableViewCellWithTableView:(UITableView *)tableView{
    NSString *reuseID = @"reuseID";
    UserInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"UserInfoTableViewCell" owner:nil options:nil]lastObject];
        
    }
    return cell;
}

@end
