//
//  IconTableViewCell.m
//  iCode
//
//  Created by SoolyChristina on 16/10/30.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "IconTableViewCell.h"

@implementation IconTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(IconTableViewCell *)iconTableViewCellWithTableView:(UITableView *)tableView{
    static NSString *reuseID = @"reuseID";
    IconTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"IconTableViewCell" owner:nil options:nil]lastObject];
    }
    return cell;
}

@end
