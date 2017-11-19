//
//  VCFirst.h
//  13.多界面传值
//
//  Created by 王浩祯 on 2017/11/19.
//  Copyright © 2017年 王浩祯. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"


@interface VCFirst : UIViewController<VCSecondDelegate>

-(void)changeColor:(UIColor *)color;

@end
