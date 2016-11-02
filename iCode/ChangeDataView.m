//
//  PopupView.m
//  LewPopupViewController
//
//  Created by deng on 15/3/5.
//  Copyright (c) 2015年 SoolyChristina. All rights reserved.
//

#import "ChangeDataView.h"
#import "UIViewController+LewPopupViewController.h"
#import "LewPopupViewAnimationFade.h"
#import "LewPopupViewAnimationSlide.h"
#import "LewPopupViewAnimationSpring.h"
#import "LewPopupViewAnimationDrop.h"

@implementation ChangeDataView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [[NSBundle mainBundle] loadNibNamed:[[self class] description] owner:self options:nil];
        _innerView.frame = frame;
        [self addSubview:_innerView];
    }
    return self;
}

-(void)setDataStr:(NSString *)dataStr{
    _dataStr = dataStr;
    self.textField.text = dataStr;
    self.textField.userInteractionEnabled = NO;
}

+ (instancetype)changeData{
    
    return [[ChangeDataView alloc]initWithFrame:CGRectMake(0, 0, 280, 140)];
}

- (IBAction)okClick {
    
    [_parentVC lew_dismissPopupView];
}

- (IBAction)cancelClick {
    
    [_parentVC lew_dismissPopupView];
}





@end
