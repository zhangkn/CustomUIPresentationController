//
//  KNDismissedUIViewControllerAnimatedTransitioning.m
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "KNDismissedUIViewControllerAnimatedTransitioning.h"
#import "UIView+Extension.h"
@implementation KNDismissedUIViewControllerAnimatedTransitioning



#pragma mark - ******** UIViewControllerAnimatedTransitioning

// This is used for percent driven interactive transitions, as well as for
// container controllers that have companion animations that might need to
// synchronize with the main animation.
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    return 5;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
/**
 避免 show dismss  都执行此代码的动画，可采用不同的nullable id <UIViewControllerAnimatedTransitioning> 对象进行动画处理
 */
#if 1
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    UIView *transitionContextFromView =[transitionContext viewForKey:UITransitionContextFromViewKey];
    
    transitionContextFromView.y =0 ;
    [UIView animateWithDuration:5.0 animations:^{
        transitionContextFromView.y = -transitionContextFromView.height;
        
        
        
    } completion:^(BOOL finished) {
        //必须告诉它  完成了动画，否则 动画进程掌握CPU
#warning 必须有此行代码，否则界面将不处理其它事件
        [transitionContext completeTransition:YES];
        
    }];
    
}
#endif

@end
