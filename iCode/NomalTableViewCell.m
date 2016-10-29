//
//  NomalTableViewCell.m
//  iCode
//
//  Created by SoolyChristina on 2016/10/29.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import "NomalTableViewCell.h"

@interface NomalTableViewCell ()

/**
 *  头像
 */
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

/**
 *  操作名
 */
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

@implementation NomalTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(NomalTableViewCell *)nomalTableViewCellWithTableView:(UITableView *)tableView{
    NSString *reuseID = @"reuseID";
    NomalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"NomalTableViewCell" owner:nil options:nil]lastObject];
        cell.iconView.image = [UIImage imageNamed:@"tabbar_home"];
    }
    return cell;
}

@end
