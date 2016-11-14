//
//  CodeCircleViewModel.h
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CodeCircle;
@interface CodeCircleViewModel : NSObject

/**
 *  数据模型
 */
@property (nonatomic ,strong) CodeCircle *codeCircle;

/**
 *  Code圈主体Frame
 */
@property (nonatomic ,assign) CGRect circleBodyFrame;

    //昵称Frame
@property (nonatomic ,assign) CGRect bodyNameFrame;
    //头像Frame
@property (nonatomic ,assign) CGRect bodyIconFrame;
    //时间Frame
@property (nonatomic ,assign) CGRect bodyTimeFrame;
    //正文Frame
@property (nonatomic ,assign) CGRect bodyTextFrame;

/**
 *  Code圈工具条Frame
 */
@property (nonatomic, assign) CGRect circleToolBarFrame;

//点赞Frame
@property (nonatomic ,assign) CGRect ToolLikeFrame;
//评论Frame
@property (nonatomic ,assign) CGRect ToolCommentFrame;

/**
 *  cell高度
 */
@property (nonatomic ,assign) CGFloat cellHeight;

@end
