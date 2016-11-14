//
//  CodeCircleTableViewCell.h
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CodeCircle.h"

@class CodeCircleViewModel;
@interface CodeCircleTableViewCell : UITableViewCell

@property (nonatomic, strong) NSMutableArray *codeCircles;
@property (nonatomic, strong) CodeCircleViewModel *codeCircleFrame;

+ (instancetype)codeCircleCellWithTableView:(UITableView *)tableView;

@end
