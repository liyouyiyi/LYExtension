//
//  UIView+Custom.h
//  NavigationBarDemo
//
//  Created by DarrenXie on 15/6/9.
//  Copyright (c) 2015年 YeahKa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Custom)

- (CGFloat)top;
- (CGFloat)bottom;
- (CGFloat)left;
- (CGFloat)right;
- (CGFloat)width;
- (CGFloat)height;

- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)width;

+ (UIView *)lineView:(CGFloat)leftMargin topMargin:(CGFloat)topMargin;
+ (UIView *)lineView:(CGFloat)leftMargin rightMargin:(CGFloat)rightMargin topMargin:(CGFloat)topMargin;

/*!
 * 变成圆形或椭圆
 */
- (void)roundness;

/*!
 * 删除所有的子视图
 */
- (void)removeAllSubViews;

@end
