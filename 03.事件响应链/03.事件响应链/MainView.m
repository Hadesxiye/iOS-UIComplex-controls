//
//  MainView.m
//  03.事件响应链
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import "MainView.h"

@implementation MainView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
   NSLog(@"mainview事件响应 %@",self.nextResponder);
    
    //手动向下传递
    [super touchesBegan:touches withEvent:event];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
