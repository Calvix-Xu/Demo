//
//  ViewController.m
//  NotificationNotRemoveDemo
//
//  Created by Calvix on 2017/7/26.
//  Copyright © 2017年 Calvix. All rights reserved.
//

#import "ViewController.h"
#import "ObserverViewController.h"

@interface ViewController ()

@property (nonatomic, weak) ObserverViewController *vc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *pushObserverVCButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushObserverVCButton setFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:pushObserverVCButton];
    [pushObserverVCButton setTitle:@"push" forState:UIControlStateNormal];
    [pushObserverVCButton addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *postButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [postButton setFrame:CGRectMake(100, 300, 100, 100)];
    [postButton setTitle:@"post" forState:UIControlStateNormal];
    [self.view addSubview:postButton];
    [postButton addTarget:self action:@selector(post) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)push {
    ObserverViewController *vc = [ObserverViewController new];
    self.vc = vc;
    [NSTimer scheduledTimerWithTimeInterval:2 repeats:NO block:^(NSTimer * _Nonnull timer) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationNameTest object:nil];
    }];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)post {
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationNameTest object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
