//
//  CircleToolBarView.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "CircleToolBarView.h"
#import "CodeCircleViewModel.h"
#import "CodeCircle.h"

@interface CircleToolBarView ()

@property (nonatomic ,weak) UIButton *likeBtn;
@property (nonatomic ,weak) UIButton *commentBtn;

@end

@implementation CircleToolBarView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        //添加子控件
        [self setChildView];
        self.layer.cornerRadius = 7.0;
        self.layer.masksToBounds = NO;
    }
    return self;
}

- (void)setChildView{
    self.backgroundColor = [UIColor colorWithHexString:@"#555555"];
    //点赞
    UIButton *likeBtn = [[UIButton alloc] init];
    [likeBtn setImage:[UIImage imageNamed:@"like"] forState:UIControlStateNormal];
//    [likeBtn setBackgroundImage:[UIImage imageNamed:@"bg"] forState:UIControlStateNormal];
    [likeBtn setTitleColor:circleCellToolBarTintColor forState:UIControlStateNormal];
    likeBtn.titleLabel.font = circleCellToolBarTittleFont;
    [self addSubview:likeBtn];
    self.likeBtn = likeBtn;
    
    //评论
    UIButton *commentBtn = [[UIButton alloc] init];
    [commentBtn setImage:[UIImage imageNamed:@"comment"] forState:UIControlStateNormal];
    [commentBtn setTitleColor:circleCellToolBarTintColor forState:UIControlStateNormal];
    commentBtn.titleLabel.font = circleCellToolBarTittleFont;
    [self addSubview:commentBtn];
    self.commentBtn = commentBtn;
}

-(void)setCodeCircleFrame:(CodeCircleViewModel *)codeCircleFrame{
    _codeCircleFrame = codeCircleFrame;
    self.likeBtn.frame = codeCircleFrame.ToolLikeFrame;
    [self.likeBtn setTitle:[NSString stringWithFormat:@" %@",codeCircleFrame.codeCircle.like_count] forState:UIControlStateNormal];
    
    self.commentBtn.frame = codeCircleFrame.ToolCommentFrame;
    [self.commentBtn setTitle:[NSString stringWithFormat:@" %@",codeCircleFrame.codeCircle.comment_count] forState:UIControlStateNormal];
}

@end
