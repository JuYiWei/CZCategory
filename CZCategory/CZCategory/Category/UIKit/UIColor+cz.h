//
//  UIColor+cz.h
//  Library
//
//  Created by juyiwei on 2018/9/4.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CZ_HEX_COLOR(hex) [UIColor cz_hexColor:hex]
#define CZ_HEX_COLORA(hex, a) [UIColor cz_hexColor:hex alpha:a]

/*! 渐变起点位置 */
typedef NS_ENUM(NSInteger, CZGradientColorDirection) {
    /*! 从上到下 */
    CZGradientColorDirectionTop = 0,
    /*! 从左到右 */
    CZGradientColorDirectionLeft,
    /*! 从左上到右下 */
    CZGradientColorDirectionLeftTop,
    /*! 从右上到左下 */
    CZGradientColorDirectionRightTop
};

@interface UIColor (cz)

#pragma mark - 类方法

/** Hex 数值 转 颜色 */
+ (UIColor *)cz_hexValueColor:(NSInteger)hexValue;

/** Hex 数值 转 颜色，带透明度 */
+ (UIColor *)cz_hexValueColor:(NSInteger)hexValue alpha:(CGFloat)alpha;

/** Hex 字符串 转 颜色 */
+ (UIColor *)cz_hexColor:(NSString *)hexString;

/** Hex 字符串 转 颜色，带透明度 */
+ (UIColor *)cz_hexColor:(NSString *)hexString alpha:(CGFloat)alpha;

/** 线性渐变 */
+ (UIColor *)cz_gradientColoes:(NSArray <UIColor *>*)colors
                      withSize:(CGSize)size
                     direction:(CZGradientColorDirection)direction;

#pragma mark - 实例方法
   
/** 现有颜色对象，修改透明度 */
   - (UIColor *)cz_addAlpha:(CGFloat)alpha;

@end
