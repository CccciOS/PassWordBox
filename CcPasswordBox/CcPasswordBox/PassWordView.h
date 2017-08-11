//
//  PassWordView.h
//  CcDemo
//
//  Created by 崔璨 on 2017/8/7.
//  Copyright © 2017年 cccc. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kThemeColor [UIColor blackColor]
@interface PassWordView : UIView
+(PassWordView *)instance;
typedef void(^cancelBlock)();
typedef void(^confirmBlock)(NSString *text);
@property (nonatomic, copy) cancelBlock viewCancelBlock;
@property (nonatomic, copy) confirmBlock viewConfirmBlock;
@property (strong, nonatomic) IBOutlet UIView *textView;
@property (strong, nonatomic) IBOutlet UIButton *cancelBtn;
@property (strong, nonatomic) IBOutlet UIButton *confirmBtn;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UICollectionView *passWordCollectionV;
@end
