//
//  VCRoot.m
//  03.事件响应链
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
    
    _mainView = [[MainView alloc]init];
    _mainView.frame = CGRectMake(50, 50, 200,300);
    _mainView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_mainView];
    
    _subView = [[subView alloc]init];
    _subView.frame = CGRectMake(30, 30, 100, 200);
    _subView.backgroundColor = [UIColor purpleColor];
    [_mainView addSubview:_subView];
    [self.view addSubview:_mainView];
    
    self.view.backgroundColor = [UIColor blueColor];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"vcroot事件响应 %@",self.nextResponder);
    
    //手动向下传递
    [super touchesBegan:touches withEvent:event];
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
