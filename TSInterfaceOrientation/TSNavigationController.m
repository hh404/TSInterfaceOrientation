//
//  TSNavigationController.m
//  TSInterfaceOrientation
//
//  Created by huangjianwu on 2016/12/12.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSNavigationController.h"

@implementation TSNavigationController

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return [self.topViewController supportedInterfaceOrientations];
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
//    return [self.topViewController preferredInterfaceOrientationForPresentation];
    return UIInterfaceOrientationPortrait;
}

-(BOOL)shouldAutorotate {
//    return [self.topViewController shouldAutorotate];
    return YES;
}

@end
