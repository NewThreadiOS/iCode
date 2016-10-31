//
//  LiveViewController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/29.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "LiveViewController.h"
#import "LogViewController.h"
@interface LiveViewController ()

@end

@implementation LiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.view.backgroundColor = [UIColor redColor];
    UIStoryboard * stroy = [UIStoryboard storyboardWithName:@"loginReginster" bundle:nil];
    LogViewController * logVC = [stroy instantiateViewControllerWithIdentifier:@"login"];
    [self presentViewController:logVC animated:true completion:^{
        
    }];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
