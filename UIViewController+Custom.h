//
//  UIViewController+Custom.h
//  PayBao
//
//  Created by 謝傳友 on 15/7/25.
//  Copyright (c) 2015年 PAYBAO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Custom)

- (void)pushToViewControllerWithStoryboardId:(NSString *)storyboardId;

- (void)addLeftBarItem:(NSString *)title image:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action;

- (void)addRightBarItem:(NSString *)title image:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action frame:(CGRect)frame;

@end
