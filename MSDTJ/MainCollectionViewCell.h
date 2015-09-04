//
//  MainCollectionViewCell.h
//  MSDTJ
//
//  Created by chen on 15/9/4.
//  Copyright (c) 2015年 Benfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@end
