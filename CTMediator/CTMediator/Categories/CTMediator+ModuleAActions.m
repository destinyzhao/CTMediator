//
//  CTMediator+ModuleAActions.m
//  CTMediator
//
//  Created by Alex on 2017/2/7.
//  Copyright © 2017年 Alex. All rights reserved.
//

#import "CTMediator+ModuleAActions.h"

// ******************** NOTE  ************************

//TODO: 这里的两个字符串必须 hard code

//  1. 字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_A = @"A";

//  2. 字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_AViewController = @"NativeToAViewController";

// ******************** NOTE  ************************

@implementation CTMediator (ModuleAActions)

- (UIViewController *)ct_Mediator_ViewControllerWithAction:(NSString *)actionName params:(NSDictionary *)dict
{
    UIViewController *viewController = [self performTarget:kCTMediatorTarget_A
                                                    action:actionName
                                                    params:dict];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}

@end
