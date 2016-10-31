//
//  SLTableViewCell.m
//  iCode
//
//  Created by SoolyChristina on 2016/10/31.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "SLTableViewCell.h"

@implementation SLTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(SLTableViewCell *)tableViewCellWithTableView:(UITableView *)tableView andIndexPath:(NSIndexPath *)indexPath{
    static NSString *reuseID = @"SLTableViewCellID";
    SLTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[SLTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseID];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:16];
        cell.detailTextLabel.text = @"这是详细描述";
    }
    if (indexPath.section == 0 && indexPath.row == 1) {
        cell.textLabel.text = @"昵称";
    }else if (indexPath.section == 0 && indexPath.row == 2){
        cell.textLabel.text = @"账号";
    }else if (indexPath.section == 1 && indexPath.row == 0){
        cell.textLabel.text = @"姓名";
    }else if (indexPath.section == 1 && indexPath.row == 1){
        cell.textLabel.text = @"地区";
    }else if (indexPath.section == 1 && indexPath.row == 2){
        cell.textLabel.text = @"个人介绍";
    }
    return cell;
}

@end
