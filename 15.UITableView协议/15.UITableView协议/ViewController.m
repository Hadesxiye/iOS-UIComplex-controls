//
//  ViewController.m
//  15.UITableView协议
//
//  Created by 王浩祯 on 2017/11/20.
//  Copyright © 2017年 王浩祯. All rights reserved.
//
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _uitableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    _uitableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleHeight;
    
    _uitableView.delegate = self;
    _uitableView.dataSource = self;
    
    _uitableView.tableHeaderView = nil;
    
    _uitableView.tableFooterView = nil;
    
    [self.view addSubview:_uitableView];
    
    _arrayData = [[NSMutableArray alloc]init];
    
    for(int i = 0;i<20;i++)
    {
        NSString* str = [NSString stringWithFormat:@"A %d",i];
        
        [_arrayData addObject:str];
    }
    //当数据源发生变化时，需要更新视图
    [_uitableView reloadData];
    
    [self createBtn];
    
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选择了%ld",indexPath.row);
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"取消选择了%ld",indexPath.row);
}


-(void)createBtn
{
    _isEdit = NO;
    
    _btnEdit = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
    _btnFinish = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    _btnDelete = [[UIBarButtonItem alloc]initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}
//手指在单元格上移动时，显示可编辑状态
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"删除操作");
    [_arrayData removeObjectAtIndex:indexPath.row];
    //数据源变更
    [_uitableView reloadData];
    
}





//-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    //默认为删除
//    return UITableViewCellEditingStyleDelete;
//    //插入添加状态
//    //return UITableViewCellEditingStyleInsert;
//    //什么都没有的状态
//    //return UITableViewCellEditingStyleNone;
//    //多选状态
//    //return UITableViewCellEditingStyleDelete|UITableViewCellEditingStyleInsert;
//}


-(void)pressEdit
{
    _isEdit = YES;
    self.navigationItem.rightBarButtonItem = _btnDelete;
    [_uitableView setEditing:YES];
    self.navigationItem.leftBarButtonItem = _btnFinish;
    
}

-(void)pressFinish
{
    _isEdit = NO;
    self.navigationItem.rightBarButtonItem = _btnEdit;
    [_uitableView setEditing:NO];
    self.navigationItem.leftBarButtonItem = nil;
}





-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayData.count;
}
//默认组数为1
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"ID";
    //尝试获取可以复用的单元格
    //如果得不到，返回nil
    UITableViewCell* cell = [_uitableView dequeueReusableCellWithIdentifier:str];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
        
    }
    cell.textLabel.text = [_arrayData objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"子标题";
    
    NSString* strimage = [NSString stringWithFormat:@"%ld.png",indexPath.row% 7+1];
    
    UIImage* image = [UIImage imageNamed:strimage];
    
    cell.imageView.image = image;
    
    return cell;
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

