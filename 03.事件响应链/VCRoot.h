//
//  VCRoot.h
//  03.事件响应链
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"
#import "subView.h"

@interface VCRoot : UIViewController
{
    //主视图对象定义
    MainView* _mainView;
    //子视图对象定义
    subView*  _subView;
}

@end
