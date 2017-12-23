//
//  VCThird.m
//  05.导航控制器切换
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor purpleColor];
    self.title = @"视图三";
    
    UIBarButtonItem* btnLeft = [[UIBarButtonItem alloc]initWithTitle:@"返回=。=" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    //当自己设定左侧按钮时
    //自动生产的返回按钮会被替换
    self.navigationItem.leftBarButtonItem = btnLeft;
    
    UIBarButtonItem* btnRight = [[UIBarButtonItem alloc]initWithTitle:@"时光倒流" style:UIBarButtonItemStylePlain target:self action:@selector(pressBackFirst)];
    
    self.navigationItem.rightBarButtonItem = btnRight;
}
-(void)pressBack
{
    //将当前的视图控制器弹出，返回上一级界面
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)pressBackFirst
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
