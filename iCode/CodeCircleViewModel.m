//
//  CodeCircleViewModel.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import "CodeCircleViewModel.h"
#import "CodeCircle.h"

@implementation CodeCircleViewModel

- (void)setCodeCircle:(CodeCircle *)codeCircle{
    _codeCircle = codeCircle;
    //计算Code圈主体Frame
    [self setCodeCircleBodyFrames];
    //计算Code圈工具条Frame
    [self setCodeCircleToolBarFrames];
    //计算CellHeight
    [self setCellHeight];
}

//计算Code圈主体Frame
- (void)setCodeCircleBodyFrames{
    //头像
    CGFloat iconX = circleCellMargin;
    CGFloat iconY = circleCellMargin;
    CGFloat iconW = circleCelliconWH;
    CGFloat iconH = circleCelliconWH;
    self.bodyIconFrame = CGRectMake(iconX, iconY, iconW, iconH);
    //昵称
    CGFloat nameX = circleCelliconWH + circleCellMargin * 2;
    CGFloat nameY = iconY;
//    CGFloat nameW = 120;
    
    CGSize nameSize = [self.codeCircle.name sizeWithAttributes:circleCellNameattributes];
    self.bodyNameFrame = (CGRect){{nameX,nameY},nameSize};
    
    //时间
    CGFloat timeX = nameX;
    CGFloat timeY = CGRectGetMaxY(self.bodyNameFrame) + circleCellMargin * 0.5;
    CGSize timeSize = [self.codeCircle.time boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:circleCellTimeattributes context:nil].size;
    self.bodyTimeFrame = (CGRect){{timeX,timeY},timeSize};
    
    //正文
    CGFloat textX = circleCellMargin;
    CGFloat textY = CGRectGetMaxY(self.bodyIconFrame) + circleCellMargin;
    CGFloat textW = circleCellWidth - circleCellMargin * 2;
    CGSize textSize = [self.codeCircle.text boundingRectWithSize:CGSizeMake(textW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:circleCellTextattributes context:nil].size;
    self.bodyTextFrame = (CGRect){{textX,textY},textSize};
    //主体frame
    CGFloat bodyX = 0;
    CGFloat bodyY = 0;
    CGFloat bodyW = circleCellWidth;
    CGFloat bodyH = CGRectGetMaxY(self.bodyTextFrame) + circleCellMargin;
    self.circleBodyFrame = CGRectMake(bodyX, bodyY, bodyW, bodyH);
}

//计算Code圈工具条Frame
- (void)setCodeCircleToolBarFrames{
    //点赞
    CGFloat likeX = 0;
    CGFloat likeY = 0;
    CGFloat likeW = circleCellWidth / 2;
    CGFloat likeH = circleCellToolBarHeight;
    self.ToolLikeFrame = CGRectMake(likeX, likeY, likeW, likeH);
    //评论
    CGFloat commentX = likeW;
    CGFloat commentY = 0;
    CGFloat commentW = likeW;
    CGFloat commentH = likeH;
    self.ToolCommentFrame = CGRectMake(commentX, commentY, commentW, commentH);
    //工具条frame
    CGFloat toolBarX = 0;
    CGFloat toolBarY = CGRectGetMaxY(self.circleBodyFrame);
    CGFloat toolBarW = circleCellWidth;
    CGFloat toolBarH = circleCellToolBarHeight;
    self.circleToolBarFrame = CGRectMake(toolBarX, toolBarY, toolBarW, toolBarH);
}

- (void)setCellHeight{
    self.cellHeight = CGRectGetMaxY(self.circleToolBarFrame);
}

@end
