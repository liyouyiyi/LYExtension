//
//  UIImage+Custom.h
//  XSTravel
//
//  Created by 謝傳友 on 15/6/6.
//  Copyright (c) 2015年 XieShou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Custom)

/*!
 * 拉伸图片
 */
+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;

/*!
 * 改变图片的长和宽
 */
- (UIImage *)scaleWithWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)scaleWithSize:(CGSize)size;

/*!
 * 切割图片
 */
+ (UIImage *)captureImage:(UIImage *)image rect:(CGRect)rect;
- (UIImage *)imageByCaptureRect:(CGRect)rect;

+ (UIImage *)imageWithColor:(UIColor*)color;


@end
