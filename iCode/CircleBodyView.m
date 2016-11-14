//
//  CircleBodyView.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "CircleBodyView.h"
#import "CodeCircleViewModel.h"
#import "CodeCircle.h"

@interface CircleBodyView ()

@property (nonatomic, weak) UIImageView *iconView;
@property (nonatomic, weak) UILabel *nameLabel;
@property (nonatomic, weak) UILabel *textLabel;
@property (nonatomic, weak) UILabel *timeLabel;

@end

@implementation CircleBodyView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //添加子控件
        [self setChildView];
    }
    return self;
}

- (void)setChildView{
    //头像
    UIImageView *iconView = [[UIImageView alloc] init];
    [self addSubview:iconView];
    self.iconView = iconView;
    
    //昵称
    UILabel *nameLabel = [[UILabel alloc] init];
    [self addSubview:nameLabel];
    nameLabel.font = circleCellNameFont;
    self.nameLabel = nameLabel;
    //时间
    UILabel *timeLabel = [[UILabel alloc] init];
    timeLabel.font = circleCellTimeFont;
    [self addSubview:timeLabel];
    self.timeLabel = timeLabel;
    
    //正文
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.font = circleCellTextFont;
      //换行
    textLabel.numberOfLines = 0;
    [self addSubview:textLabel];
    self.textLabel = textLabel;
}

-(void)setCodeCircleFrame:(CodeCircleViewModel *)codeCircleFrame{
    _codeCircleFrame = codeCircleFrame;
    //给子控件赋值
    [self setData];
    //给子控件设置frame
    [self setFrame];
}

-(void)setData{
    self.iconView.image = [UIImage imageNamed:self.codeCircleFrame.codeCircle.icon];
    self.nameLabel.text = self.codeCircleFrame.codeCircle.name;
    self.textLabel.text = self.codeCircleFrame.codeCircle.text;
    self.timeLabel.text = self.codeCircleFrame.codeCircle.time;
}

-(void)setFrame{
    self.iconView.frame = self.codeCircleFrame.bodyIconFrame;
    self.nameLabel.frame = self.codeCircleFrame.bodyNameFrame;
    self.textLabel.frame = self.codeCircleFrame.bodyTextFrame;
    self.timeLabel.frame = self.codeCircleFrame.bodyTimeFrame;
}

@end
