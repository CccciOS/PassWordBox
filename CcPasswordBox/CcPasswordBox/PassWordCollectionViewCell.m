//
//  PassWordCollectionViewCell.m
//  CcDemo
//
//  Created by 崔璨 on 2017/8/9.
//  Copyright © 2017年 cccc. All rights reserved.
//

#import "PassWordCollectionViewCell.h"
#import "PassWordView.h"
@implementation PassWordCollectionViewCell

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.lineV = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 1, self.frame.size.height)];
        self.lineV.center = CGPointMake(self.frame.size.width-self.lineV.frame.size.width/2, self.frame.size.height/2);
        self.lineV.backgroundColor = kThemeColor;
        [self addSubview:self.lineV];
        
        self.circleImageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width/2.5, self.frame.size.width/2.5)];
        self.circleImageV.center = CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
        self.circleImageV.layer.cornerRadius = self.circleImageV.frame.size.height / 2;
        self.circleImageV.layer.masksToBounds = YES;
        [self addSubview:self.circleImageV];

    }
    
    return self;
    
}


@end
