//
//  UIButton+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/18.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (cz)

/** 文本/高亮 */
- (void)cz_setNormalTitle:(NSString *)normalTitleStr highlightTitle:(NSString *)highlightTitleStr;

/** 文本 */
- (void)cz_setTitle:(NSString *)title;

/** 文本颜色/高亮 */
- (void)cz_setNormalTitleColor:(UIColor *)normalTitleColor highlightTitleColor:(UIColor *)highlightTitleColor;

/** 文本颜色 */
- (void)cz_setTitleColor:(UIColor *)titleColor;

/** 图片/高亮 */
- (void)cz_setNormalImage:(UIImage *)normalImage highlightImage:(UIImage *)highlightImage;

/** 图片 */
- (void)cz_setImage:(UIImage *)image;

/** 背景图片/高亮 */
- (void)cz_setNormalBackgroundImage:(UIImage *)normalBackgroundImage highlightBackgroundColor:(UIImage *)highlightBackgroundImage;

/** 背景图片 */
- (void)cz_setBackgroundImage:(UIImage *)backgroundImage;

/** 背景颜色/高亮 */
- (void)cz_setNormalBackgroundColor:(UIColor *)normalBackgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor;

/** 背景颜色 */
- (void)cz_setBackgroundColor:(UIColor *)backgroundColor;

@end

NS_ASSUME_NONNULL_END
