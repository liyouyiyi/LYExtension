//
//  UIButton+Custom.m
//  PayBao
//
//  Created by 謝傳友 on 15/7/18.
//  Copyright (c) 2015年 PAYBAO. All rights reserved.
//

#import "UIButton+Custom.h"
#import "Common.h"

@implementation UIButton (Custom)

+ (UIButton *)submitButtonWithTitle:(NSString *)title
{
    UIButton *submitBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    submitBtn.frame = CGRectMake(20, 50, SCREEN_WIDTH - 40, 40);
    [submitBtn setTitle:title forState:UIControlStateNormal];
    [submitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    submitBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    submitBtn.backgroundColor = DefaultBtnColor;
    submitBtn.layer.cornerRadius = 5.0;
    
    return submitBtn;
}

+ (UIButton *)submitButtonWithTitle:(NSString *)title bgColor:(UIColor *)color
{
    UIButton *submitBtn = [self submitButtonWithTitle:title];
    submitBtn.backgroundColor = color;
    return submitBtn;
}

@end
