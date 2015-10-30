//
//  Music.h
//  BaiDuMusic
//
//  Created by 余丽丽 on 15/10/31.
//  Copyright © 2015年 余丽丽. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Music : NSObject

///  音乐名称
@property (nonatomic, copy) NSString *name;

///  音乐文件名称
@property (nonatomic, copy) NSString *filename;

///  歌词名称
@property (nonatomic, copy) NSString *lrcname;

///  歌手
@property (nonatomic, copy) NSString *singer;

///  歌手头像
@property (nonatomic, copy) NSString *singerIcon;

///  封面
@property (nonatomic, copy) NSString *icon;

@end
