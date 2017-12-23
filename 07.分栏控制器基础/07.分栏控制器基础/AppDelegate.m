//
//  AppDelegate.m
//  07.分栏控制器基础
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    //创建第一个视图 背景蓝色
    VCFirst* vcFirst = [[VCFirst alloc]init];
    
    //创建第二个视图 背景黄色
    VCSecond* vcSecond = [[VCSecond alloc]init];
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    //创建第三个视图 背景绿色
    VCThird* vcThird = [[VCThird alloc]init];
    vcThird.view.backgroundColor = [UIColor greenColor];
    
    vcFirst.title = @"视图一";
    
    vcSecond.title = @"视图二";
    
    vcThird.title = @"视图三";
    //**注意view.background会去调用VCFirst里的viewdidload，再调用上面的vcFirst.title,会导致标题被覆盖*******************
    vcFirst.view.backgroundColor = [UIColor blueColor];
    
    //创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc]init];
    //创建一个分栏控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond,vcThird ,nil];
    
    //将分栏控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图
    self.window.rootViewController = tbController;
    
    //设置选中的视图控制器的索引
    //通过索引来确定显示哪个控制器
    //按数组中的顺序0~n；
    tbController.selectedIndex = 2;
    
    if(tbController.selectedViewController == vcThird)
    {
        NSLog(@"当前显示的是控制器三");
    }
    //设置分栏控制器的透明度
    tbController.tabBar.translucent = NO;
    
    return YES;
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
