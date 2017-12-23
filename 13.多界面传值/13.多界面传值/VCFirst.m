//
//  VCFirst.m
//  13.多界面传值
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

//实现代理协议
-(void)changeColor:(UIColor *)color
{
    //将second的color的值传到这
    self.view.backgroundColor = color;
}

//推出视图控制器二
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    VCSecond* vc = [[VCSecond alloc]init];
    
    //将当前控制器作为代理对象赋值
    vc.delegate = self;
    
    vc.view.backgroundColor = [UIColor orangeColor];
    
    //推出视图控制器二
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
