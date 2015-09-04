//
//  MainViewController.m
//  MSDTJ
//
//  Created by chen on 15/8/31.
//  Copyright (c) 2015年 Benfu. All rights reserved.
//

#import "MainViewController.h"
#import "MainCollectionViewCell.h"
#import "DetailViewController.h"
#import "AddGoodsViewController.h"
#define DeviceWidth ([UIScreen mainScreen].bounds.size.width) //設備寬
#define DeviceHeight ([UIScreen mainScreen].bounds.size.height) //設備高

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[MainCollectionViewCell class] forCellWithReuseIdentifier:@"goodsCollectionCell"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

#pragma mark - CollectionView data source

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 16;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    MainCollectionViewCell *cell = (MainCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"goodsCollectionCell" forIndexPath:indexPath];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *dvc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    [self.navigationController pushViewController:dvc animated:YES];
}

//定义每个UICollectionViewCell 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake((DeviceWidth*11.0/12)/2, ((DeviceWidth*11.0/12)/2)*100/64);
}

//每个section中不同的行之间的行间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return DeviceWidth/36.0;
}

//间距
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    UIEdgeInsets top = {0,DeviceWidth/36.0,-49,DeviceWidth/36.0};
    return top;
}
- (IBAction)addgoods:(id)sender {
    AddGoodsViewController *avc =[self.storyboard instantiateViewControllerWithIdentifier:@"AddGoodsViewController"];
    [self.navigationController pushViewController:avc animated:YES];
    
    
}

@end
