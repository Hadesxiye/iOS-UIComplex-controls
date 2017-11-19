//
//  VCSecond.m
//  13.多界面传值
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //改变颜色导航栏按钮
    UIBarButtonItem* btnChange = [[UIBarButtonItem alloc]initWithTitle:@"变色" style:UIBarButtonSystemItemDone target:self action:@selector(pressChange)];
    
    self.navigationItem.rightBarButtonItem = btnChange;
}
//点击按钮时，触发代理事件
-(void)pressChange
{
    //代理对象调用事件函数
    [_delegate changeColor:[UIColor redColor]];
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
