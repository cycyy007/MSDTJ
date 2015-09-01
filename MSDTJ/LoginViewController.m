//
//  LoginViewController.m
//  LCB
//
//  Created by alexCC on 15/7/25.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "LoginViewController.h"

#import "RegistereViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTF;//账号
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;//密码
@property (weak, nonatomic) IBOutlet UIButton *clearnumB;//清除账号
@property (weak, nonatomic) IBOutlet UIButton *clearpwB;//清除密码
@property (weak, nonatomic) IBOutlet UIImageView *loginImageView;//轮播图片

@property(nonatomic,strong)NSTimer *timer;//轮播定时器
@property(nonatomic)NSInteger carouselbool;//轮播判断

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.numberTF becomeFirstResponder];
    self.carouselbool = 1;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(carouselImage:) userInfo:nil repeats:YES];
}

//轮播图片
-(void)carouselImage:(NSTimer *)timer{
    int i = (int)self.carouselbool;
    if (i%3 == 0) {
        self.loginImageView.image = [UIImage imageNamed:@"loginimage1.jpg"];
    }else if (i%3 == 1){
        self.loginImageView.image = [UIImage imageNamed:@"loginimage2.jpg"];
    }else{
        self.loginImageView.image = [UIImage imageNamed:@"loginimage3.jpg"];
    }
    
    self.carouselbool++;
    
}




//返回
- (IBAction)back:(UIButton *)sender {
  
        [self dismissViewControllerAnimated:YES completion:nil];
}

//清除账号
- (IBAction)clearNumber:(UIButton *)sender {
    self.numberTF.text = @"";
}

//清除密码
- (IBAction)clearPassword:(UIButton *)sender {
    self.passwordTF.text = @"";
}

//登录
- (IBAction)login:(UIButton *)sender {

}

//去注册账号
- (IBAction)gotoRegister:(UIButton *)sender {
    RegistereViewController *re = [self.storyboard instantiateViewControllerWithIdentifier:@"RegistereViewController"];
    re.registerOrReset = @"register";
    [self presentViewController:re animated:YES completion:nil];
}

//忘记密码
- (IBAction)gotoForgetPassword:(UIButton *)sender {
    RegistereViewController *re = [self.storyboard instantiateViewControllerWithIdentifier:@"RegistereViewController"];
    re.registerOrReset = @"reset";
    [self presentViewController:re animated:YES completion:nil];
}



#pragma mark - 收键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)receiveKeyboard:(UITextField *)sender {
}

@end
