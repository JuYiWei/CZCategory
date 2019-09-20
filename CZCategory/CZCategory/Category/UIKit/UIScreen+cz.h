//
//  UIScreen+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/6.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

// 屏幕宽高
#define CZ_SCREEN_WIDTH     ([UIScreen mainScreen].bounds.size.width)
#define CZ_SCREEN_HEIGHT    ([UIScreen mainScreen].bounds.size.height)
#define CZ_SCREEN_SCALE     ([UIScreen mainScreen].scale)
#define CZ_SCREEN_ONE_PIXEL (1/CZ_SCREEN_SCALE)
#define CZ_SCREEN_SPECIAL   (CZ_SCREEN_PHONE_MAX_1242x2688 || CZ_SCREEN_PHONE_X_1125x2436 || CZ_SCREEN_PHONE_XR_828x1792)


// 屏幕区分 iPhone
#define CZ_SCREEN_PHONE_MAX_1242x2688           ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(1242, 2688)) : NO)
#define CZ_SCREEN_PHONE_X_1125x2436             ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(1125, 2436)) : NO)
#define CZ_SCREEN_PHONE_XR_828x1792             ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(828, 1792)) : NO)
#define CZ_SCREEN_PHONE_PLUS_1242x2208          ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(1242, 2208)) : NO)
#define CZ_SCREEN_PHONE_6_750x1334              ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(750, 1334)) : NO)
#define CZ_SCREEN_PHONE_5_640x1136              ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(640, 1136)) : NO)
#define CZ_SCREEN_PHONE_4_640x960               ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(640, 960)) : NO)

// 屏幕区分 iPad
#define CZ_SCREEN_PAD_12_9_2048x2732        ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(2048, 2732)) : NO)
#define CZ_SCREEN_PAD_11_1668x2388          ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(1668, 2388)) : NO)
#define CZ_SCREEN_PAD_10_5_1668x2224        ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(1668, 2224)) : NO)
#define CZ_SCREEN_PAD_9_7_1536x2048         ([[UIScreen mainScreen] respondsToSelector:@selector(currentMode)] ? CGSizeEqualToSize([UIScreen mainScreen].currentMode.size, CGSizeMake(1536, 2048)) : NO)


NS_ASSUME_NONNULL_BEGIN

@interface UIScreen (cz)

@end

NS_ASSUME_NONNULL_END
