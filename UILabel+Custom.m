//
//  UILabel+Custom.m
//  PayBao
//
//  Created by 謝傳友 on 15/7/25.
//  Copyright (c) 2015年 PAYBAO. All rights reserved.
//

#import "UILabel+Custom.h"

@implementation UILabel (Custom)

- (CGFloat)widthByLimitHeight:(CGFloat)height
{
    CGSize size = CGSizeMake(0, height);
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    CGRect frame = [self.text boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil];
    return frame.size.width;
}

- (CGFloat)heightByLimitWidth:(CGFloat)width
{
    CGFloat height = 0;
    CGSize size = CGSizeMake(width, 0);
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    CGRect frame = [self.text boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil];
    height = frame.size.height;
    return height;
}


@end
