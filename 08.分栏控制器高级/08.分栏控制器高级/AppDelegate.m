//
//  AppDelegate.m
//  08.分栏控制器高级
//
//  Created by 王浩祯 on 2017/12/23.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSix.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    VCFirst* vc01 = [[VCFirst alloc]init];
    VCSecond* vc02 = [[VCSecond alloc]init];
    VCThird* vc03 = [[VCThird alloc]init];
    VCFour* vc04 = [[VCFour alloc]init];
    VCFive* vc05 = [[VCFive alloc]init];
    VCSix* vc06 = [[VCSix alloc]init];
    
    vc01.view.backgroundColor = [UIColor blueColor];
    vc02.view.backgroundColor = [UIColor yellowColor];
    vc03.view.backgroundColor = [UIColor purpleColor];
    vc04.view.backgroundColor = [UIColor grayColor];
    vc05.view.backgroundColor = [UIColor greenColor];
    vc06.view.backgroundColor = [UIColor orangeColor];
    
    vc01.title = @"视图1";
    vc02.title = @"视图2";
    vc03.title = @"视图3";
    vc04.title = @"视图4";
    vc05.title = @"视图5";
    vc06.title = @"视图6";
    
    NSArray* arrayVC = [NSArray arrayWithObjects:vc01,vc02,vc03,vc04,vc05,vc06, nil];
    
    UITabBarController* tbc = [[UITabBarController alloc]init];
    
    tbc.viewControllers = arrayVC;
    
    self.window.rootViewController = tbc;
    
    //改变工具蓝颜色
    tbc.tabBar.barTintColor = [UIColor redColor];
    //改变按钮风格颜色
    tbc.tabBar.tintColor = [UIColor blackColor];
    
    tbc.delegate = self;
  
    return YES;
}
-(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{
    NSLog(@"开始编辑前调用");
}

-(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    NSLog(@"即将结束前");
}

-(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    NSLog(@"vcs==%@",viewControllers);
    if (changed==YES) {
        NSLog(@"顺序已经变化");
    }
    NSLog(@"已经结束");
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (tabBarController.viewControllers[tabBarController.selectedIndex]==viewController) {
        NSLog(@"ok");
    }
    NSLog(@"选中控制器");
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
