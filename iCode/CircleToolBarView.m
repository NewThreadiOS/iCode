//
//  CircleToolBarView.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "CircleToolBarView.h"
#import "CodeCircleViewModel.h"

@interface CircleToolBarView ()

@property (nonatomic ,weak) UIButton *likeBtn;
@property (nonatomic ,weak) UIButton *commentBtn;

@end

@implementation CircleToolBarView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //添加子控件
        [self setChildView];
    }
    return self;
}

- (void)setChildView{
    //点赞
    UIButton *likeBtn = [[UIButton alloc] init];
    [self addSubview:likeBtn];
    self.likeBtn = likeBtn;
    
    //评论
    UIButton *commentBtn = [[UIButton alloc] init];
    [self addSubview:commentBtn];
    self.commentBtn = commentBtn;
}

-(void)setCodeCircleFrame:(CodeCircleViewModel *)codeCircleFrame{
    
}

@end
