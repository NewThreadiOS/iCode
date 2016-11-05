//
//  LogViewController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/31.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "LogViewController.h"

@interface LogViewController ()

@end

@implementation LogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)loginButton:(UIButton *)sender {
    [AVUser logInWithUsernameInBackground:self.name.text password:self.password.text block:^(AVUser *user, NSError *error) {
        if (error == nil) {
            [self dismissViewControllerAnimated:true completion:^{
                
            }];
        }
        else{
            [self dismissViewControllerAnimated:true completion:^{
                
            }];
            [ProgressHUD showError:@"登录失败"];

        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
