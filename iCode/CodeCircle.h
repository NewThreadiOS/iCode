//
//  CodeCircle.h
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodeCircle : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *time;
@property (nonatomic, copy) NSString *comment_count;
@property (nonatomic, copy) NSString *like_count;

- (instancetype)initWithDic:(NSDictionary *)dic;
+ (instancetype)initWithDic:(NSDictionary *)dic;

+ (NSMutableArray *)codeCircles;

@end
