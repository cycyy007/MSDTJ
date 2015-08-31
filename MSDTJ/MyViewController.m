//
//  MyViewController.m
//  MSDTJ
//
//  Created by chen on 15/8/31.
//  Copyright (c) 2015年 Benfu. All rights reserved.
//
#define kDeviceWidth ([UIScreen mainScreen].bounds.size.width)//设备宽
#define KDeviceHeight ([UIScreen mainScreen].bounds.size.height)//设备高
#import "MyViewController.h"

@interface MyViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *certainbtn;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.certainbtn setTitle:@"确定" forState:UIControlStateNormal];
    self.certainbtn.layer.masksToBounds = YES;
    self.certainbtn.layer.cornerRadius = 5;
    self.certainbtn.backgroundColor=[UIColor orangeColor];
    self.certainbtn.alpha = 0.8;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 收键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

#pragma mark - textField delegate
- (void)textFieldDidBeginEditing:(UITextField *)textField

{
    [self animateTextField: textField up: YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField

{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up{
    
    int movementDistance = 0; // 升高的高度
    
    if ((int)KDeviceHeight == 480) {
        movementDistance = 120;
    }else if((int)KDeviceHeight == 568) {
        movementDistance = 40;
    }
    
    const float movementDuration = 0.3f; // 动画时间
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    
    [UIView setAnimationBeginsFromCurrentState: YES];
    
    [UIView setAnimationDuration: movementDuration];
    
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    
    [UIView commitAnimations];
    
}

- (IBAction)GO:(id)sender {
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
