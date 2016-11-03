//
//  ChangeView.h
//  iCode
//
//  Created by SoolyChristina on 2016/11/3.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LewPopupViewController.h"
#import "UserInfoViewController.h"

@interface ChangeView : UIView

@property (nonatomic, copy) NSString *dataStr;
@property (nonatomic, weak) UserInfoViewController *userInfoVC;
@property (weak, nonatomic) IBOutlet UILabel *tittleLabel;

+ (ChangeView *)changeViewWithTittleName:(NSString *)name andDataStr:(NSString *)str;

@end
