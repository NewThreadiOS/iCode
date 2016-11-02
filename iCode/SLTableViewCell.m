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
    }
    return cell;
}

@end
