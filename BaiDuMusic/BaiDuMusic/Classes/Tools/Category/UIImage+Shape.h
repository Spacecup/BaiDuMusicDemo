//
//  UIImage+Shape.h
//  BaiDuMusic
//
//  Created by 余丽丽 on 15/10/31.
//  Copyright © 2015年 余丽丽. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Shape)

///  根据图片信息,返回圆形的图片
///
///  @param name        图片名称
///  @param borderWidth 边框宽度
///  @param borderColor 边框颜色
///
///  @return
+(instancetype)circelImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
@end
