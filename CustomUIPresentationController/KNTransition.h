//
//  KNTransition.h
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HSSingleton.h"
/**
 实现UIViewControllerTransitioningDelegate自定义展示和动画的代理
 
 
 即实现展示和动画的细节处理
 */
@interface KNTransition : NSObject<UIViewControllerTransitioningDelegate>


HSSingletonH(KNTransition);

@end
