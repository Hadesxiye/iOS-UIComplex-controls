//
//  ViewController.h
//  16.UITableView高级协议
//
//  Created by 王浩祯 on 2017/11/30.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITabBarDelegate,UITableViewDataSource>
{
    //数据视图
    UITableView * _uitableView;
    //数据源
    NSMutableArray* _arrayData;
    
    UIBarButtonItem* _btnEdit;
    UIBarButtonItem* _btnFinish;
    UIBarButtonItem* _btnDelete;
    BOOL _isEdit;
}

@end

