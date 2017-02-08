//
//  Target_A.m
//  CTMediator
//
//  Created by Alex on 2017/2/7.
//  Copyright © 2017年 Alex. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"
#import "BViewController.h"
#import "PresentViewController.h"

@implementation Target_A

- (UIViewController *)Action_NativeToAViewController:(NSDictionary *)params
{
    AViewController *newsVC = [[AViewController alloc] init];
    
    if ([params valueForKey:@"msg"]) {
        newsVC.msg = params[@"msg"];
    }
    
    return newsVC;
}

- (UIViewController *)Action_NativeToBViewController:(NSDictionary *)params
{
    BViewController *newsVC = [[BViewController alloc] init];
    
    if ([params valueForKey:@"msg"]) {
        newsVC.msg = params[@"msg"];
    }
    
    return newsVC;
}

- (UIViewController *)Action_NativeToPresentViewController:(NSDictionary *)params
{
    PresentViewController *newsVC = [[PresentViewController alloc] init];
    
    return newsVC;
}

@end
