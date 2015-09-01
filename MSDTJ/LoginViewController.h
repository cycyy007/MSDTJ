//
//  LoginViewController.h
//  LCB
//
//  Created by alexCC on 15/7/25.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (nonatomic, strong) NSString *boolStr;//判断哪一个界面请求登陆（1为在别的界面中点击登陆，其它为在主界面tabcontroller点击购物车或者个人界面）
@end
