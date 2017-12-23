//
//  ViewController.m
//  16.UITableView高级协议
//
//  Created by 王浩祯 on 2017/11/30.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

-(void)createBtn
{
    _isEdit = NO;
    
    _btnEdit = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];
    _btnFinish = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    _btnDelete = [[UIBarButtonItem alloc]initWithTitle:@"删除" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

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
    
    return cell;
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
