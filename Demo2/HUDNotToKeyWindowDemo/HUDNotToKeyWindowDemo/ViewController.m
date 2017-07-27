//
//  ViewController.m
//  HUDNotToKeyWindowDemo
//
//  Created by Calvix on 2017/7/25.
//  Copyright © 2017年 Calvix. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

NSString *hudToViewWithUserInteractionEnabled = @"hudToViewWithUserInteractionEnabled";
NSString *hudToKeywindowWithUserInteractionEnabled = @"hudToKeywindowWithUserInteractionEnabled";
NSString *hudToKeywindowWithUserInteractionDisabled = @"hudToKeywindowWithUserInteractionDisabled";


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    SecondViewController *vc = segue.destinationViewController;
    NSLog(@"%@", segue.identifier);
    if ([segue.identifier isEqualToString:hudToKeywindowWithUserInteractionEnabled]) {
        vc.isShowHudInKeyWindow = YES;
        vc.hudUserInteractionEnabled = YES;
    }else if ([segue.identifier isEqualToString:hudToKeywindowWithUserInteractionDisabled]) {
        vc.isShowHudInKeyWindow = YES;
        vc.hudUserInteractionEnabled = NO;
    }else if ([segue.identifier isEqualToString:hudToViewWithUserInteractionEnabled]) {
        vc.isShowHudInKeyWindow = NO;
        vc.hudUserInteractionEnabled = YES;
    }else {
        NSAssert(false, @"");
    }
    
}


@end
