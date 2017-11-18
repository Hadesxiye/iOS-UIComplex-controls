//
//  ViewController.m
//  01.手动布局子视图
//
//  Created by Hades on 2017/11/18.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //创建一个父视图
    SuperView* sView = [[SuperView alloc]init];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [sView createSubViews];
    
    sView.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:sView];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(240, 480, 80, 40);
    
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn2.frame = CGRectMake(240, 520, 80, 40);
    
    [btn2 setTitle:@"缩小" forState:UIControlStateNormal];
    
    [btn2 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn2];
    
    sView.tag = 101;
}

//放大父亲视图
-(void)pressLarge
{
    SuperView* sView = (SuperView*)[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 300, 480);
    
    [UIView commitAnimations];
}

//缩小父亲视图
-(void)pressSmall
{
    SuperView* sView = (SuperView*)[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [UIView commitAnimations];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
