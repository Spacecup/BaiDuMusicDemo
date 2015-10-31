//
//  PlayerViewController.m
//  BaiDuMusic
//
//  Created by 余丽丽 on 15/10/31.
//  Copyright © 2015年 余丽丽. All rights reserved.
//

#import "PlayerViewController.h"
#import "UIView+Frame.h"

@implementation PlayerViewController
static PlayerViewController * instancet;
+(instancetype)sharePlayer{
    static dispatch_once_t token = 0;
    
    dispatch_once(&token, ^{
        instancet = [[PlayerViewController alloc] init];
    });
    return instancet;
}
// 显示
-(void)show{

//拿到主window
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    self.view.frame = window.bounds;
    [window addSubview:self.view];
    
    //给view的出现添加动画效果
    window.userInteractionEnabled= NO;
    self.view.y = window.height;
    [UIView animateWithDuration:1.0 animations:^{
        self.view.y = 0;
    } completion:^(BOOL finished) {
        window.userInteractionEnabled = YES;
        
        
    }];


}


@end
