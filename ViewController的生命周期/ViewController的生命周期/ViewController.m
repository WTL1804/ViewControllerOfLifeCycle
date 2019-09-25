//
//  ViewController.m
//  ViewController的生命周期
//
//  Created by 王天亮 on 2019/9/25.
//  Copyright © 2019 王天亮. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController
//- (void)loadView {
//    [super loadView];
//    NSLog(@"loadView正在执行");
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"viewDidLoad正在执行");
//    self.mainView = [[View alloc] init];
//    self.mainView.frame = CGRectMake(0, 0, 300,  600);
//    // 上面这句话会调用View里的layoutSubviews
//    self.navigationController.navigationBar.hidden = NO;
//    self.mainView.backgroundColor = [UIColor orangeColor];
    
    
    [self.view addSubview:self.mainView];// 会调用View里的layoutSubviews
        
}
-(void)viewWillLayoutSubviews{
    //用于修改子视图布局
    NSLog(@"viewWillLayoutSubviews正在执行");
}
-(void)viewDidLayoutSubviews{
    NSLog(@"viewDidLayoutSubviews正在执行");
}
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillApper正在执行");
}
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear正在执行");
        //这个方法是当前页面最后执行的
    //在这里push到另外一个页面来观察下面的执行顺序
    SecondViewController *controller = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
    NSLog(@"viewDidAppear正在执行");
    
}
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear正在执行");
}
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear正在执行");
}

@end
