//
//  IMViewController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/29.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "IMViewController.h"

@interface IMViewController ()

@end

@implementation IMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       // Do any additional setup after loading the view.
    UIButton * but = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, self.view.frame.size.height/2, 60, 60)];
    [but setTitle:@"点击" forState:UIControlStateNormal];
    [but addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];

    }
- (void)clickButton:(id)sender {
    //----------------客服---------------------
    NSString *sysNumber=@"dd71b145f54e448a9faaddb6d7d37ae3";
    
    //启动
    
    
    CFUUIDRef puuid = CFUUIDCreate( nil );
    CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
    NSString *result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    
    
    NSLog(@"uuid%@",result);
    
    ZCLibInitInfo *initInfo = [ZCLibInitInfo new];
    
    initInfo.enterpriseId = sysNumber;
    
    //用户id，用于标识用户，建议填写
    
    initInfo.userId= @"Your userId";
    
    initInfo.phone= @"Your phone";
    
    initInfo.nickName= @"Your nickName";
    
    initInfo.email=@"Your user email";
    
    ZCKitInfo *uiInfo= [ZCKitInfo new];
    
    uiInfo.info=initInfo;
    
    // [self customerUI:uiInfo];
    
    [ZCSobot startZCChatView:uiInfo with:self
     
                   pageBlock:^(ZCUIChatController *object, ZCPageBlockType type) {
                       
                       //点击返回
                       
                       if(type == ZCPageBlockGoBack){
                           
                           NSLog(@"点击了关闭按钮");
                           
                       }
                       
                       //页面UI初始化完成，可以获取UIView，自定义UI
                       
                       if(type == ZCPageBlockLoadFinish){
                           
                           //banner 返回按钮
                           
                           //[object.backButton setTitle:@" 返回" forState:UIControlStateNormal];
                           
                           //banner 标题
                           
                           //[object.titleLabel setFont:[UIFont systemFontOfSize:30]];
                           
                           //banner 底部View
                           
                           //[object.topView setBackgroundColor:[UIColor greenColor]];
                           
                           //输入框
                           
                           //UITextView *tv=[object getChatTextView];
                           
                           //[tv setBackgroundColor:[UIColor redColor]];
                           
                       }
                       
                       //messageLinkClick ,不重写，系统自己跳转，sdk内部不做任何处理
                       
                   } messageLinkClick:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
