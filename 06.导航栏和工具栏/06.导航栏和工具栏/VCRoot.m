//
//  VCRoot.m
//  06.导航栏和工具栏
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    //设置导航栏风格颜色
    //默认半透明风格
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    //将风格设置不透明
    self.navigationController.navigationBar.translucent = NO;
    //设置导航栏颜色
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    //设置导航元素项目按钮的颜色
    self.navigationController.navigationBar.tintColor = [UIColor orangeColor];
    //导航栏隐藏，hidden继承view的属性
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBarHidden = NO;
    
    
    self.title = @"根视图";
    
    UIBarButtonItem* btn = [[UIBarButtonItem alloc]initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = btn;
    //实现工具栏对象
    //默认工具栏是隐藏的
    self.navigationController.toolbarHidden = NO;
    
    self.navigationController.toolbar.translucent = NO;
    
    UIBarButtonItem* btn01 = [[UIBarButtonItem alloc]initWithTitle:@"日日" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem* btn02 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressNext)];
    
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [btnImage setImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
    
    
    btnImage.frame = CGRectMake(0, 0, 60, 60);
    UIBarButtonItem* btn03 = [[UIBarButtonItem alloc]initWithCustomView:btnImage];
    //固定宽度占位按钮fixed
    UIBarButtonItem* btnF01 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];

    btnF01.width = 100;
    //计算自动宽度按钮flexible
    UIBarButtonItem* btnF02 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    //按钮数组创建
    NSArray* arryBtns = [NSArray arrayWithObjects:btn01,btnF02,btn02,btnF02,btn03 ,nil];
    
    self.toolbarItems = arryBtns;

}
-(void)pressNext
{
    VCSecond* vc = [[VCSecond alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
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
