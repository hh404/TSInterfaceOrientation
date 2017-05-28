//
//  AppDelegate.m
//  TSInterfaceOrientation
//
//  Created by huangjianwu on 2016/12/12.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "AppDelegate.h"
#import "TSNavigationController.h"
#import "TSTabBarController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIStoryboard *ar =  [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [ar instantiateInitialViewController];
    TSNavigationController  *nc = [[TSNavigationController alloc] initWithRootViewController:vc];
    nc.tabBarItem.title = @"Demo";
    
    TSTabBarController *tc = [[TSTabBarController alloc] init];
    UIViewController *vc1 = [[UIViewController alloc] init];
    tc.viewControllers = [NSArray arrayWithObjects:nc,vc1, nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = tc;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window
{
    NSUInteger orientations = UIInterfaceOrientationMaskAll;
    
//    if ([self.window.rootViewController isKindOfClass:[UINavigationController class]]) {
////        UIViewController* presented = [(UITabBarController *)self.window.rootViewController selectedViewController];
//        UIViewController *presented = [[(UINavigationController*)self.window.rootViewController viewControllers] lastObject];
//        orientations = [presented supportedInterfaceOrientations];
//        return orientations;
//    }
    return UIInterfaceOrientationMaskAll;
}

@end
