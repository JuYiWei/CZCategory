//
//  UIImage+cz.h
//  Library
//
//  Created by juyiwei on 2018/9/11.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CZ_IMAGE_NAME(name) [UIImage imageNamed:name]
#define CZ_IMAGE_FILE(name) [UIImage cz_imageFromMainBundleWithPNGName:name]

/** 生成二维码质量： L: 7% M: 15% Q: 25% H: 30% */
typedef NS_ENUM(NSInteger, CZImageQRQuility) {
    CZImageQRQuilityL,
    CZImageQRQuilityM,
    CZImageQRQuilityQ,
    CZImageQRQuilityH
};

@interface UIImage (cz)

#pragma mark - 类方法

/** 通用读取文件图片 */
+ (UIImage *)cz_imageFromBundle:(NSBundle *)bundle name:(NSString *)name type:(NSString *)type;

/** 主包 读取文件图片 */
+ (UIImage *)cz_imageFromMainBundleWithName:(NSString *)name type:(NSString *)type;

/** 主包 读取 png 文件图片 */
+ (UIImage *)cz_imageFromMainBundleWithPNGName:(NSString *)name;

/** 颜色生成图片，指定尺寸 */
+ (UIImage *)cz_imageFromColor:(UIColor *)color size:(CGSize)size;

/** 颜色生成图片，默认尺寸 1x1 */
+ (UIImage *)cz_imageFromColor:(UIColor *)color;

/** 生成二维码，通用参数 */
+ (UIImage *)cz_createQRImageWithContent:(NSString *)content quility:(CZImageQRQuility)quility scale:(CGFloat)scale;

/** 生成二维码，指定放大 */
+ (UIImage *)cz_createQRImageWithContent:(NSString *)content scale:(CGFloat)scale;

/** 生成二维码，默认 */
+ (UIImage *)cz_createQRImageWithContent:(NSString *)content;
   
#pragma mark - 实例方法
   
/** 识别二维码 */
- (NSString *)cz_scanQRCodeFromImage;

@end
