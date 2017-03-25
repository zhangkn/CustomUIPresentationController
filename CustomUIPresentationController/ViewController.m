//
//  ViewController.m
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "ViewController.h"
#import "KNSecondViewController.h"
#import "KNUIPresentationController.h"
#import "UIView+Extension.h"

#import "KNSourceUIViewControllerAnimatedTransitioning.h"
#import "KNDismissedUIViewControllerAnimatedTransitioning.h"


@interface ViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    KNSecondViewController *secondVC = [[KNSecondViewController alloc]init];
#warning must  设置modalPresentationStyle样式为自定义
    secondVC.modalPresentationStyle = UIModalPresentationCustom;//设置展示样式,包含了modalTransitionStyle的自定义
    secondVC.transitioningDelegate = self;//此协议用于实现自定义UIPresentationController
    //2.  设置动画样式
    
//    secondVC.modalTransitionStyle = self.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:secondVC animated:YES completion:^{
        
    }];
    
    
}
#pragma mark - ******** modal 展示的自定义


- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0){
    
    return [[KNUIPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
}


#pragma mark - ******** modal 动画的自定义

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [[KNSourceUIViewControllerAnimatedTransitioning alloc]init];
}
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return [[KNDismissedUIViewControllerAnimatedTransitioning alloc]init];
}


@end
