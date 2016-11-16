//
//  CodeCircleTableViewCell.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "CodeCircleTableViewCell.h"
#import "CircleBodyView.h"
#import "CircleToolBarView.h"
#import "CodeCircleViewModel.h"

@interface CodeCircleTableViewCell ()

//Code圈主体
@property (nonatomic, weak) CircleBodyView *bodyView;

//工具条
@property (nonatomic, weak) CircleToolBarView *toolBarView;

@end

@implementation CodeCircleTableViewCell

+ (instancetype)codeCircleCellWithTableView:(UITableView *)tableView{
    static NSString *reuseID = @"cell";
    CodeCircleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (!cell) {
        cell = [[CodeCircleTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
//        UIImageView *im = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"bgg"]];
//        self.backgroundView = im;
        // 阴影、圆角
        self.layer.backgroundColor = [UIColor grayColor].CGColor;
        self.layer.shadowOffset = CGSizeMake(0.5, 10);
        self.layer.shadowRadius = 7.0;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 0.3;
        self.layer.cornerRadius = 7.0;
        self.layer.masksToBounds = NO;
        // 添加子控件
        [self setChildView];
    }
    return self;
}

//添加子控件
- (void)setChildView{
    //Code圈主体
    CircleBodyView *bodyView = [[CircleBodyView alloc] init];
    [self addSubview:bodyView];
    self.bodyView = bodyView;
    
    //工具条
    CircleToolBarView *toolBar = [[CircleToolBarView alloc] init];
    [self addSubview:toolBar];
    self.toolBarView = toolBar;    
}

-(void)setCodeCircleFrame:(CodeCircleViewModel *)codeCircleFrame{
    _codeCircleFrame = codeCircleFrame;
    
    //设置子控件的frame
    self.bodyView.frame = codeCircleFrame.circleBodyFrame;
    self.bodyView.codeCircleFrame = codeCircleFrame;
    self.toolBarView.frame = codeCircleFrame.circleToolBarFrame;
    self.toolBarView.codeCircleFrame = codeCircleFrame;
}

-(void)setFrame:(CGRect)frame{
    frame.origin.x += circleCellMargin;
    frame.size.width -= circleCellMargin * 2;
    [super setFrame:frame];
}

@end
