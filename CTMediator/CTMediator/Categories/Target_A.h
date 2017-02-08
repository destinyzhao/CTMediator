//
//  Target_A.h
//  CTMediator
//
//  Created by Alex on 2017/2/7.
//  Copyright © 2017年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_A : NSObject

/**
 *  返回 AViewController 实例
 *
 *  @param params 要传给 AViewController 的参数
 */
- (UIViewController *)Action_NativeToAViewController:(NSDictionary *)params;

/**
 *  返回 BViewController 实例
 *
 *  @param params 要传给 BViewController 的参数
 */
- (UIViewController *)Action_NativeToBViewController:(NSDictionary *)params;

/**
 *  返回 PresentViewController 实例
 *
 *  @param params 要传给 PresentViewController 的参数
 */
- (UIViewController *)Action_NativeToPresentViewController:(NSDictionary *)params;

@end
