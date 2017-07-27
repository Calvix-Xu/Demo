//
//  MainViewController.m
//  SetTabBarVCNilDemo
//
//  Created by Calvix on 2017/7/25.
//  Copyright © 2017年 Calvix. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)loadView {
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *nextButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [nextButton setTitle:@"NextVC" forState:UIControlStateNormal];
    [self.view addSubview:nextButton];
    [nextButton setFrame:CGRectMake(100, 100, 100, 100)];
    
    [nextButton addTarget:self action:@selector(next:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *resetButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [resetButton setTitle:@"resetTabBar" forState:UIControlStateNormal];
    [resetButton setFrame:CGRectMake(100, 300, 100, 100)];
    [self.view addSubview:resetButton];
    [resetButton addTarget:self action:@selector(resetTabBar:) forControlEvents:UIControlEventTouchUpInside];
    
    CGFloat r = (rand() % 255)/255.0;
    CGFloat g = (rand() % 255)/255.0;
    CGFloat b = (rand() % 255)/255.0;
    
    self.view.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

- (void)next:(id)sender {
    MainViewController *vc = [MainViewController new];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)resetTabBar:(id)sender {
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [delegate resetTabBarVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"%@ dealloc", NSStringFromClass(self.class));
}

@end
