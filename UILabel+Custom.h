//
//  UILabel+Custom.h
//  PayBao
//
//  Created by 謝傳友 on 15/7/25.
//  Copyright (c) 2015年 PAYBAO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Custom)

- (CGFloat)widthByLimitHeight:(CGFloat)height;
- (CGFloat)heightByLimitWidth:(CGFloat)width;

@end
