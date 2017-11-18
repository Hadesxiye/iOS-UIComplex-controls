//
//  SuperView.h
//  01.手动布局子视图
//
//  Created by Hades on 2017/11/18.
//  Copyright © 2017年 Hades. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperView : UIView
{
    UIView* _view01;
    UIView* _view02;
    UIView* _view03;
    UIView* _view04;
    UIView* _view05;
    UIView* _viewhomework;
}

-(void)createSubViews;
@end
