//
//  MusicTool.m
//  BaiDuMusic
//
//  Created by 余丽丽 on 15/10/31.
//  Copyright © 2015年 余丽丽. All rights reserved.
//

#import "MusicTool.h"
#import "Music.h"
#import "MJExtension.h"

@implementation MusicTool

static NSArray* musics;
static Music * playingMusic;

+ (NSArray *)shareMusics{
    
    static dispatch_once_t token = 0;
    dispatch_once(&token, ^{
        musics = [Music objectArrayWithFilename:@"Musics.plist"];
    });
    return musics;
}

+ (Music *)PlayingMusic{
    
    return playingMusic;

}

+ (void)setPlayingMusic:(Music *)music{
    assert(music);
    playingMusic = music;

}
@end
