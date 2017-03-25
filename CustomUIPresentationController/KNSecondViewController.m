//
//  KNSecondViewController.m
//  CustomUIPresentationController
//
//  Created by devzkn on 25/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "KNSecondViewController.h"

@interface KNSecondViewController ()

@end

@implementation KNSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
