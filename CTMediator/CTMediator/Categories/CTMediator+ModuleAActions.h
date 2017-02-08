//
//  CTMediator+ModuleAActions.h
//  CTMediator
//
//  Created by Alex on 2017/2/7.
//  Copyright © 2017年 Alex. All rights reserved.
//

#import "CTMediator.h"
#import <UIKit/UIKit.h>

/** ViewController 相关的路由跳转 */
@interface CTMediator (ModuleAActions)

- (UIViewController *)ct_Mediator_ViewControllerWithAction:(NSString *)actionName params:(NSDictionary *)dict;

@end
