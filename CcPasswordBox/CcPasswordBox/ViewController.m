//
//  ViewController.m
//  CcPasswordBox
//
//  Created by 崔璨 on 2017/8/11.
//  Copyright © 2017年 cccc. All rights reserved.
//

#import "ViewController.h"
#import "PassWordView.h"
@interface ViewController ()
@property(strong,nonatomic)PassWordView *passWordV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"密码框";
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 200, 100);
    btn.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    self.passWordV.viewCancelBlock = ^(){
        NSLog(@"消失了");
    };
    
    self.passWordV.viewConfirmBlock=^(NSString *text){
        NSLog(@"textCode:%@",text);
    };

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)btn: (UIButton *)sender
{
    
    [[UIApplication sharedApplication].keyWindow addSubview:self.passWordV];
}

- (PassWordView *)passWordV
{
    if (!_passWordV) {
        _passWordV = [[PassWordView instance] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    }
    return _passWordV;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
