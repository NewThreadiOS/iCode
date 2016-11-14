//
//  CodeCircle.m
//  iCode
//
//  Created by SoolyChristina on 2016/11/14.
//  Copyright © 2016年 SoolyChristina. All rights reserved.
//  Code圈 数据模型

#import "CodeCircle.h"

@implementation CodeCircle

-(instancetype)initWithDic:(NSDictionary *)dic{
    if (self = [super init]) {
        //KVC赋值
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

+(instancetype)initWithDic:(NSDictionary *)dic{
    return [[self alloc] initWithDic:dic];
}

+(NSMutableArray *)codeCircles{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"CodeCircle.plist" ofType:nil];
    NSArray *dicArr = [NSArray arrayWithContentsOfFile:path];
    NSMutableArray *arr = [NSMutableArray array];
    for (NSDictionary *dic in dicArr) {
        CodeCircle *codecircle = [CodeCircle initWithDic:dic];
        [arr addObject:codecircle];
    }
    return arr;
}

@end
