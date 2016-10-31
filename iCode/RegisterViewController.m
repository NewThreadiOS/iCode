//
//  RegisterViewController.m
//  iCode
//
//  Created by Mr.Nut on 16/10/31.
//  Copyright © 2016年 Mr.Nut. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)registerButton:(UIButton *)sender {
    AVUser * user = [[AVUser alloc]init];
    
    user.username = self.name.text;
    user.password = self.password.text;
    user.email = self.email.text;
    [user saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (succeeded) {
            [ProgressHUD showSuccess:@"注册成功"];
        }else{
            [ProgressHUD showError:@"注册失败"];
        }
    }];
}
- (IBAction)cancel:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:^{
        
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
