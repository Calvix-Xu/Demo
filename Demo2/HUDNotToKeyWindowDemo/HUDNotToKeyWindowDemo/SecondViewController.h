//
//  SecondViewController.h
//  HUDNotToKeyWindowDemo
//
//  Created by Calvix on 2017/7/25.
//  Copyright © 2017年 Calvix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property (nonatomic, assign) BOOL isShowHudInKeyWindow;

/*
 HUD是否响应事件，用于区分show HUD时，位于HUD下层的视图是否可触发事件，例如点击
 */
@property (nonatomic, assign) BOOL hudUserInteractionEnabled;

@end
