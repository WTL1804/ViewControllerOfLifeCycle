//
//  View.m
//  ViewController的生命周期
//
//  Created by 王天亮 on 2019/9/25.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "View.h"

@implementation View

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)layoutSubviews {
    NSLog(@"View里的layoutSubviews正在执行");
}

@end
