//
//  SecondViewController.m
//  HUDNotToKeyWindowDemo
//
//  Created by Calvix on 2017/7/25.
//  Copyright © 2017年 Calvix. All rights reserved.
//

#import "SecondViewController.h"
#import <MBProgressHUD.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = nil;
    
    if (self.isShowHudInKeyWindow) {
        view = [UIApplication sharedApplication].keyWindow;
    }else {
        view = self.view;
    }
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.userInteractionEnabled = self.hudUserInteractionEnabled;
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // Do something...
        sleep(5);
        dispatch_async(dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUDForView:view animated:YES];
        });
    });
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    /*
    if (self.isShowHudInKeyWindow) {
        [MBProgressHUD hideHUDForView:[UIApplication sharedApplication].keyWindow animated:true];
    }
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
