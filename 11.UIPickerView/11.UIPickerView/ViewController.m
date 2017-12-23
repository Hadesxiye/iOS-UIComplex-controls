//
//  ViewController.m
//  11.UIPickerView
//
//  Created by 王浩祯 on 2017/11/23.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
//普通代理协议，处理视图选取等普通事件协议功能
//数据协议代理，处理获取数据的代理协议函数

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建选择视图对象
    //显示多组数据和多个元素以供选择
    //例如选择日期时间，日历等
    //地区地址等
    UIPickerView* pickerView = [[UIPickerView alloc]init];
    
    pickerView.frame = CGRectMake(10, 100, 300, 200);
    //设置普通代理对象为当前的视图控制器
    pickerView.delegate = self;
    //设置数据代理对象为当前视图控制器
    pickerView.dataSource = self;
    
    [self.view addSubview:pickerView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//实现获取数组的协议函数
//返回值为选择视图的组数
//整数类型
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //组数
    return 3;
}
//实现每组元素的个数
//每组元素有多少行
//P1：调用此协议函数的选择视图本身
//P2：第几组的元素个数
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //对component判断可改变没列个数
    if (component == 0) {
        return 5;
    }
  
    //每组10个元素
    return 10;
}
//显示每个元素的内容
//P1：调用此协议函数的选择视图本身
//P2：行数
//P3：组数
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString* str = [NSString stringWithFormat:@"%ld组%ld行",component,row+1];
    return str;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    //可以根据component加判断
    return 80;
}
////自定义视图显示到选择视图
//-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
//{
//    UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",(row)%7+1]];
//    UIImageView* iview = [[UIImageView alloc]initWithImage:image];
//    iview.frame = CGRectMake(0, 0, 80, 80);
//    return iview;
//}









@end
