//
//  ViewController.m
//  12NSUserDefault
//
//  Created by 王浩祯 on 2017/11/23.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"写入文件" forState:UIControlStateNormal];
    //添加事件函数
    [btn addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton* btnRead = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnRead.frame = CGRectMake(100, 200, 80, 40);
    [btnRead setTitle:@"读出文件" forState:UIControlStateNormal];
    [btnRead addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRead];
    
}

-(void)pressWrite
{
    //定义一个用户默认数据对象
    //不需要alloc创建，用户默认数据对象单例模式
    //standardUserDefaults：获取全局唯一的实例对象
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    //存储字符串对象
    //可以将对象存储到内部文件中
    //P1：要存储的对象 id
    //P2：对象的名字  NSString
    [ud setObject:@"mike" forKey:@"Name"];
    
    NSNumber* num = [NSNumber numberWithInt:100];
    //    存储数据对象
    //    只能存储能够文件化的对象
    [ud setObject:num forKey:@"NUM"];
    //    不能存储动态创建的对象
    //    不能存储不能文件化的对象
    //    [ud setObject:self.view forKey:@"VIEW"]错误
    
    //    存储整形数据
    [ud setInteger:123 forKey:@"INT"];
    //    存储bool值
    [ud setBool:YES forKey:@"BOOL"];
    //     存储浮点型值
    [ud setFloat:555 forKey:@"FLOAT"];
    //创建一个可文件化的数组
    NSArray* array = [NSArray arrayWithObjects:@"21" ,@"12",@"42", nil];

    [ud setObject:array forKey:@"ARRAY"];
    
    
}

-(void)pressRead
{
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    id object = [ud objectForKey:@"Name"];
    NSString* name = (NSString*) object;
    NSLog(@"name= %@",name);
    
    object = [ud objectForKey:@"NUM"];
    NSNumber* num = (NSNumber*) object;
    NSLog(@"num = %@",num);
    
    NSInteger iv = [ud integerForKey:@"INT"];
    NSLog(@"iv = %ld",iv);
    
    BOOL bv = [ud boolForKey:@"BOOL"];
    
    float fv = [ud floatForKey:@"FLOAT"];
    
    NSLog(@"bv= %d",bv);
    NSLog(@"fv = %f",fv);
    
    NSArray* array = [ud objectForKey:@"ARRAY"];
    NSLog(@"array = %@",array);
    
    [ud removeObjectForKey:@"ARRAY"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
