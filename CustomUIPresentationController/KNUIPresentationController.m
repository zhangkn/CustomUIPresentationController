//
//  KNUIPresentationController.m
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "KNUIPresentationController.h"

@implementation KNUIPresentationController

#pragma mark - ******** 重写父类的方法


/** 
 展示    self.presentingViewController 之后，  container的区域不能响应，除非使用 passthrough穿透技术
 
 */
// Position of the presented view in the container view by the end of the presentation transition.
- (CGRect)frameOfPresentedViewInContainerView{
//    return self.presentedViewController.view.bounds;//// (Default: container view bounds)
//    return self.containerView.bounds;//1.// The view in which a presentation occurs. It is an ancestor of both the presenting and presented view controller's views.
    // This view is being passed to the animation controller.
//    @property(nullable, nonatomic, readonly, strong) UIView *containerView;
    
    //2. 设置CGRect 的技巧
    
    return CGRectInset(self.containerView.bounds, 10, 50);//设置presenting的边距，即设置x,y 方向切掉的长度
}


- (void)presentationTransitionWillBegin{
    //自己添加presentedView，此时frameOfPresentedViewInContainerView 方式失效
    [self.containerView addSubview:self.presentedView];//如果是自定义动画的话，必须自己添加presentedView
    
    
}
- (void)presentationTransitionDidEnd:(BOOL)completed{
    
    
}
- (void)dismissalTransitionWillBegin{
    
    
}
- (void)dismissalTransitionDidEnd:(BOOL)completed{
    [self.presentedView removeFromSuperview];
}


@end
