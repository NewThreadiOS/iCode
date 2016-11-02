//
//  PopupView.h
//  LewPopupViewController
//
//  Created by deng on 15/3/5.
//  Copyright (c) 2015年 SoolyChristina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LewPopupViewController.h"

@interface ChangeDataView : UIView

@property (weak, nonatomic) IBOutlet UILabel *tittleLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;


@property (nonatomic, strong)IBOutlet UIView *innerView;
@property (nonatomic, weak)UIViewController *parentVC;
@property (nonatomic, copy) NSString *dataStr;

+ (instancetype)changeData;

@end
