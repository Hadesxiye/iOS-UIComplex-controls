//
//  ViewController.h
//  02.自动布局子视图
//
//  Created by Hades on 2017/11/18.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //创建父视图对象
    UIView* _superView;
    
    //左上角label
    UILabel* _label01;
    //右上角label
    UILabel* _label02;
    //右下角
    UILabel* _label03;
    //左下角
    UILabel* _label04;
    //居中视图
    UIView* _viewCenter;
    
}


@end

