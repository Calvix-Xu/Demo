//
//  ObserverViewController.m
//  NotificationNotRemoveDemo
//
//  Created by Calvix on 2017/7/26.
//  Copyright © 2017年 Calvix. All rights reserved.
//

#import "ObserverViewController.h"


@interface ObserverViewController ()

@end

@implementation ObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(testNotification:) name:kNotificationNameTest object:nil];
    
}

- (void)testNotification:(NSNotification *)notification {
    NSLog(@"%@", notification.description);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (void)dealloc {
    NSLog(@"%@, dealloc", self.class);
//    iOS9 以后不再需要移除
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
