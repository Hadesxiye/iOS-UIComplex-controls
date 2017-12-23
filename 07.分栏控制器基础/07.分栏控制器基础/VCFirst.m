//
//  VCFirst.m
//  07.分栏控制器基础
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     创建一个分栏按钮对象
     P1：文字
     P2：显示图标
     P3：设置按钮的tag值
     方法一
     */
//    UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTitle:@"111" image:nil tag:101];
//
//    self.tabBarItem = tabBarItem;
    
    //根据系统风格创建分栏按钮
    //
    UITabBarItem* tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];
    
    //按钮右上提示信息
    //通常用来提示未读信息
    tabBarItem.badgeValue = @"22";
    
    self.tabBarItem = tabBarItem;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
