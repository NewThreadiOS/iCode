//
//  LJTabBarController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/29.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "LJTabBarController.h"
#import "UIImage+image.h"
#import "LJTaBar.h"
#import <objc/message.h>
#import "MeViewController.h"
#import "CodeViewController.h"
#import "LiveViewController.h"
#import "IMViewController.h"
#import "SLViewController.h"



@interface LJTabBarController ()

@end

@implementation LJTabBarController

+(void)initialize
{
    //获取所有的tabBatItem的外观（标识）  appearance只要一个类遵守UIAppearance，就能获取全局的外观，UIView   会改变所有的uiview 所以不严谨
    //UITabBarItem*item=[UITabBarItem appearance];
    
    UITabBarItem*item = [UITabBarItem appearanceWhenContainedIn:self, nil];//获取当前这个类下面的所有tabBarItem
    
    NSMutableDictionary*att = [NSMutableDictionary dictionary];
    att[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    
    [item setTitleTextAttributes:att forState:UIControlStateSelected];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%s",__func__);
    
    //3.管理子控制器
    [self setUpAllChildViewController];
    //修改tabBar的位置
    
    //自定义tabBar
    LJTaBar*tabBar=[[LJTaBar alloc]initWithFrame:self.tabBar.frame];
    //由于tabBar是readonly所以用KVC赋值self.tabBar=tabBar;
    [self setValue:tabBar forKey:@"tabBar"];
    //objc_msgSend(self, @selector(setTabBar:),tabBar);
    NSLog(@"%@",self.tabBar);
    
    
}
#pragma mark-添加子控制器
-(void)setUpAllChildViewController{
     //Live
    SLViewController *live = [[SLViewController alloc]initWithRootViewController:[[LiveViewController alloc]init]];
    [self setUPOneChildViewController:live image:[UIImage imageNamed:@"tabbar_home"] selectedImage:[UIImage imageWithOringinalNanme:@"tabbar_home_selected"] title:@"直播"];
    
    
   //IM
    SLViewController *im = [[SLViewController alloc]initWithRootViewController:[[IMViewController alloc]init]];
    [self setUPOneChildViewController:im image:[UIImage imageNamed:@"tabbar_message_center"] selectedImage:[UIImage imageWithOringinalNanme:@"tabbar_message_center_selected"] title:@"消息"];
    //Code
    SLViewController *code = [[SLViewController alloc]initWithRootViewController:[[CodeViewController alloc]init]];
    [self setUPOneChildViewController:code image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageWithOringinalNanme:@"tabbar_discover_selected"] title:@"Code圈"];
    
    
    //Me
    SLViewController *me = [[SLViewController alloc]initWithRootViewController:[[MeViewController alloc]init]];
    [self setUPOneChildViewController:me image:[UIImage imageNamed:@"tabbar_profile"] selectedImage:[UIImage imageWithOringinalNanme:@"tabbar_profile_selected"] title:@"我"];
    
}
-(void)setUPOneChildViewController:(UIViewController*)vc image:(UIImage*)image selectedImage :(UIImage*)selectedImage title:(NSString*)title
{
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = image;
    //    NSMutableDictionary*att=[NSMutableDictionary dictionary];
    //    att[NSForegroundColorAttributeName]=[UIColor orangeColor];
    //
    //
    //    [vc.tabBarItem setTitleTextAttributes:att forState:UIControlStateSelected];
//    vc.tabBarItem.badgeValue=@"1";
    UIImage *setImage = selectedImage;
    vc.tabBarItem.selectedImage = setImage;
    [self addChildViewController:vc];
}

@end
