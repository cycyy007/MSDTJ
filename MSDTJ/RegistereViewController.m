//
//  RegistereViewController.m
//  LCB
//
//  Created by alexCC on 15/7/25.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "RegistereViewController.h"


@interface RegistereViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *headImageView;//标题图片
@property (weak, nonatomic) IBOutlet UITextField *telTF;//手机号
@property (weak, nonatomic) IBOutlet UITextField *codeTF;//验证码
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;//密码
@property (weak, nonatomic) IBOutlet UIButton *clearnumB;//清除手机号
@property (weak, nonatomic) IBOutlet UIButton *clearpdB;//清除密码
@property (weak, nonatomic) IBOutlet UIButton *registerOrResetB;//注册 or 重置 按钮
@property (weak, nonatomic) IBOutlet UIImageView *registereimage;//轮播图片

@property(nonatomic,strong)NSTimer *timer;//轮播定时器
@property(nonatomic)NSInteger carouselbool;//轮播判断

@end

@implementation RegistereViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //判断是注册还是忘记密码
    if ([self.registerOrReset isEqualToString:@"register"]) {
        self.headImageView.image = [UIImage imageNamed:@"register-head.png"];
        [self.registerOrResetB setBackgroundImage:[UIImage imageNamed:@"registerbutton.png"] forState:UIControlStateNormal];
    }else{
        self.headImageView.image = [UIImage imageNamed:@"forget-head.png"];
        [self.registerOrResetB setBackgroundImage:[UIImage imageNamed:@"resetB.png"] forState:UIControlStateNormal];
    }
// 图片轮播
    self.carouselbool = 1;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(carouselImage:) userInfo:nil repeats:YES];
}

#pragma mark -轮播图片
-(void)carouselImage:(NSTimer *)timer{
    int i = (int)self.carouselbool;
    if (i%3 == 0) {
        self.registereimage.image = [UIImage imageNamed:@"loginimage1.jpg"];
    }else if (i%3 == 1){
        self.registereimage.image = [UIImage imageNamed:@"loginimage2.jpg"];
    }else{
        self.registereimage.image = [UIImage imageNamed:@"loginimage3.jpg"];
    }
    
    self.carouselbool++;
    
}

#pragma mark -返回
- (IBAction)back:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -清除手机号
- (IBAction)clearNumber:(UIButton *)sender {
    self.telTF.text = @"";
}

#pragma mark -清除密码
- (IBAction)clearPassword:(UIButton *)sender {
    self.passwordTF.text = @"";
}

#pragma mark -获取验证码
- (IBAction)obtainCode:(UIButton *)sender {
   }

#pragma mark -注册账号或者重置密码
- (IBAction)retisgter:(UIButton *)sender {


}

#pragma mark UIAlertViewdelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (alertView.tag == 817) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

#pragma mark - 收键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)receiveKeyboard:(UITextField *)sender {
}

@end
