//
//  ViewController.m
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "ViewController.h"
#import "KNSecondViewController.h"

#import "KNTransition.h"


@interface ViewController ()<UIViewControllerTransitioningDelegate>

@property (nonatomic,strong) KNTransition* transition;

@end

@implementation ViewController

- (KNTransition *)transition{
    if (_transition == nil) {
        _transition =[[KNTransition alloc]init];
    }
    return _transition;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    KNSecondViewController *secondVC = [[KNSecondViewController alloc]init];
#warning must  设置modalPresentationStyle样式为自定义
    secondVC.modalPresentationStyle = UIModalPresentationCustom;//设置展示样式,包含了modalTransitionStyle的自定义
//    secondVC.transitioningDelegate = self.transition;//此协议用于实现自定义UIPresentationController
    
    secondVC.transitioningDelegate = [KNTransition shareKNTransition];//此协议用于实现自定义UIPresentationController

    //2.  设置动画样式
    
//    secondVC.modalTransitionStyle = self.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:secondVC animated:YES completion:^{
        
    }];
}

@end
