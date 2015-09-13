//
//  UIViewController+Custom.m
//  PayBao
//
//  Created by 謝傳友 on 15/7/25.
//  Copyright (c) 2015年 PAYBAO. All rights reserved.
//

#import "UIViewController+Custom.h"
#import "Tool.h"
#import "Extension.h"

@implementation UIViewController (Custom)


- (void)pushToViewControllerWithStoryboardId:(NSString *)storyboardId
{
    if (!storyboardId || [[storyboardId trimSpaceString] isEqualToString:@""]) {
        return;
    }
    
    UIViewController *destination = [Tool getViewControllerWithID:storyboardId fromSBName:nil];
    
    if (!destination || ![destination isKindOfClass:[UIViewController class]]) {
        return;
    }
    
    [self.navigationController pushViewController:destination animated:YES];
}

- (void)addLeftBarItem:(NSString *)title image:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action
{
    //返回
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    backBtn.frame = CGRectMake(0, 8, 28, 28);
    [backBtn setBackgroundImage:[UIImage imageNamed:@"navigate_back"] forState:UIControlStateNormal];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"navigate_backH"] forState:UIControlStateHighlighted];
    [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem = backItem;
}

- (void)addRightBarItem:(NSString *)title image:(NSString *)image hImage:(NSString *)hImage target:(id)target action:(SEL)action frame:(CGRect)frame
{
    //右边菜单
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    rightBtn.frame = frame;
    rightBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    [rightBtn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [rightBtn setBackgroundImage:[UIImage imageNamed:hImage] forState:UIControlStateHighlighted];
    [rightBtn setTitle:title forState:UIControlStateNormal];
    [rightBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    rightBtn.titleLabel.textColor = [UIColor whiteColor];
    [rightBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = rightItem;
}

@end
