//
//  IconTableViewCell.h
//  iCode
//
//  Created by SoolyChristina on 16/10/30.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserInfoViewController.h"

@interface IconTableViewCell : UITableViewCell

@property (nonatomic,weak) UserInfoViewController *Vc;

+(IconTableViewCell *)iconTableViewCellWithTableView:(UITableView *)tableView;

@end
