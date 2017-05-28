//
//  TSTAbBarController.m
//  TSInterfaceOrientation
//
//  Created by huangjianwu on 2016/12/12.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSTabBarController.h"

@implementation TSTabBarController

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return [self.selectedViewController supportedInterfaceOrientations];
//    return UIInterfaceOrientationMaskAll;
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
//    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
    return UIInterfaceOrientationPortrait;
    
}

-(BOOL)shouldAutorotate {
//    return [self.selectedViewController shouldAutorotate];
    return YES;
}

@end
