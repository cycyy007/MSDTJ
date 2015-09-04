//
//  DetailViewController.m
//  MSDTJ
//
//  Created by chen on 15/9/4.
//  Copyright (c) 2015年 Benfu. All rights reserved.
//

#import "DetailViewController.h"
#import "SetGoodsViewController.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)set:(id)sender {
    SetGoodsViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"SetGoodsViewController"];
    [self.navigationController pushViewController:svc animated:YES];
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
