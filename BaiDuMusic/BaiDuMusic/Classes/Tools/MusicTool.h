//
//  MusicTool.h
//  BaiDuMusic
//
//  Created by 余丽丽 on 15/10/31.
//  Copyright © 2015年 余丽丽. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Music.h"

@interface MusicTool : NSObject
/**
 *  获取所有歌曲
 *
 *  @return 所有歌曲
 */
+ (NSArray *)shareMusics;

/**
 *  获取当前正在播放的歌曲
 *
 *  @return 正在播放的歌曲
 */
+ (Music *)PlayingMusic;

/**
 *  设置当前的歌曲
 *
 *  @param music 歌曲信息
 */
+ (void)setPlayingMusic:(Music *)music;






@end
