//
//  VCRoot.m
//  04.导航控制器基础
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    //设置导航栏的标题文字
    self.title = @"根视图";
    //设置导航元素项目的标题
    //如果没有设置navigationItem.title 为nil，系统会使用self.title作为标题
    //如果navigationItem.title不为空，将navigationitem.title设置为标题内容
    self.navigationItem.title = @"title";
    /*
     创建一个导航栏左侧的按钮
     根据title文字来创建按钮
     P1：按钮上的文字
     P2：按钮的风格
     P3：事假拥有者
     P4：按钮事件
     */
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc]initWithTitle:@"左侧" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    
    //将导航栏元素项左侧按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    /*
    创建一个导航栏右侧的按钮
    根据系统风格来创建按钮
    只需要指定风格样式，系统风格的按钮内容或者标题文字不能改变,都是系统自带的ui风格
    P1：按钮的风格
    P2：事假拥有者
    P3：按钮事件
    */
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    //标签对象
    UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 40)];
    label.text = @"text";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    //将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem* item03 = [[UIBarButtonItem alloc]initWithCustomView:label];
    //创建按钮数组
    NSArray* arrayBtn = [NSArray arrayWithObjects:rightBtn,item03 ,nil];
    
    //将右侧按钮数组赋值
    self.navigationItem.rightBarButtonItems = arrayBtn;
    
    
}

-(void)pressLeft
{
    NSLog(@"左侧按钮按下");
}

-(void)pressRight
{
    NSLog(@"右侧按钮按下");
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
