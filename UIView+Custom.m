//
//  UIView+Custom.m
//  NavigationBarDemo
//
//  Created by DarrenXie on 15/6/9.
//  Copyright (c) 2015年 YeahKa. All rights reserved.
//

#import "UIView+Custom.h"
#import "Common.h"

@implementation UIView (Custom)

- (CGFloat)top
{
    CGRect frame = self.frame;
    return frame.origin.y;
}

- (CGFloat)bottom
{
    CGRect frame = self.frame;
    CGFloat bottom = frame.origin.y + frame.size.height;
    return bottom;
}

- (CGFloat)left
{
    CGRect frame = self.frame;
    return frame.origin.x;
}

- (CGFloat)right
{
    CGRect frame = self.frame;
    CGFloat bottom = frame.origin.x + frame.size.width;
    return bottom;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setX:(CGFloat)x
{
    CGRect frame = self.frame;
    self.frame = CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height);
}

- (void)setY:(CGFloat)y
{
    CGRect frame = self.frame;
    self.frame = CGRectMake(frame.origin.x, y, frame.size.width, frame.size.height);
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    self.frame = CGRectMake(frame.origin.x, frame.origin.y, width, frame.size.height);
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    self.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, height);
}

+ (UIView *)lineView:(CGFloat)leftMargin topMargin:(CGFloat)topMargin
{
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(leftMargin, topMargin - 0.5, SCREEN_WIDTH, 0.5)];
    line.backgroundColor = ColorRGB(0xCF, 0xCF, 0xCF);
    return line;
}

+ (UIView *)lineView:(CGFloat)leftMargin rightMargin:(CGFloat)rightMargin topMargin:(CGFloat)topMargin
{
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(leftMargin, topMargin - 0.5, SCREEN_WIDTH - leftMargin - rightMargin, 0.5)];
    line.backgroundColor = ColorRGB(0xCF, 0xCF, 0xCF);
    return line;
}

/*!
 * 变成圆形或椭圆
 */
- (void)roundness
{
    self.layer.cornerRadius = MIN(self.width, self.height) / 2.0;
    self.clipsToBounds = YES;
}

/*!
 * 删除所有的子视图
 */
- (void)removeAllSubViews
{
    NSArray *subViews = [self subviews];
    if (!subViews) {
        return;
    }
    for (UIView *subView in subViews) {
        [subView removeFromSuperview];
    }
}

@end





