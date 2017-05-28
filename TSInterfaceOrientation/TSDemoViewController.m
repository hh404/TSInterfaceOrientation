

//
//  TSDemoViewController.m
//  TSInterfaceOrientation
//
//  Created by huangjianwu on 2016/12/12.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSDemoViewController.h"

@implementation TSDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 300, 35)];
    lb.text = @"dfdsfdsfdfsf";
    [self.view addSubview:lb];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 120, 40)];
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(_disMiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)_disMiss
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


- (UIResponder *)nextResponder
{
    return [super nextResponder];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.title = @"title";
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

-(BOOL)shouldAutorotate {
    return YES;
}


@end
