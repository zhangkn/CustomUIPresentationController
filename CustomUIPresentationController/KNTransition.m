//
//  KNTransition.m
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "KNTransition.h"
#import "KNUIPresentationController.h"
//#import "UIView+Extension.h"

#import "KNSourceUIViewControllerAnimatedTransitioning.h"
#import "KNDismissedUIViewControllerAnimatedTransitioning.h"

@implementation KNTransition




#pragma mark - ******** modal 展示的自定义


/**
 返回自定义的UIPresentationController

 @param presented  presented description
 @param presenting presenting description
 @param source     source description

 @return UIPresentationController
 */
- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0){
    
    return [[KNUIPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
}


#pragma mark - ******** modal 动画的自定义

/**
 返回自定义的UIViewControllerAnimatedTransitioning


 @param presented  presented description
 @param presenting presenting description
 @param source     <#source description#>

 @return UIViewControllerAnimatedTransitioning
 */
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [[KNSourceUIViewControllerAnimatedTransitioning alloc]init];
}
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return [[KNDismissedUIViewControllerAnimatedTransitioning alloc]init];
}



@end
