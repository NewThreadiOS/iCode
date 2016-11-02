//
//  UserInfoTableViewCell.h
//  iCode
//
//  Created by SoolyChristina on 2016/10/29.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserInfoTableViewCell : UITableViewCell

@property (nonatomic,strong) NSDictionary *dataDic;

+(UserInfoTableViewCell *)userInfoTableViewCellWithTableView:(UITableView *)tableView;

@end
