//
//  UIButton+cz.m
//  CZCategory
//
//  Created by juyiwei on 2019/9/18.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "UIButton+cz.h"
#import "UIColor+cz.h"
#import "UIImage+cz.h"

@implementation UIButton (cz)


/** 文本/高亮 */
- (void)cz_setNormalTitle:(NSString *)normalTitleStr highlightTitle:(NSString *)highlightTitleStr {
    [self setTitle:normalTitleStr forState:UIControlStateNormal];
    [self setTitle:highlightTitleStr forState:UIControlStateHighlighted];
    [self setTitle:highlightTitleStr forState:UIControlStateSelected];
    [self setTitle:normalTitleStr forState:UIControlStateSelected | UIControlStateHighlighted];
}

/** 文本 */
- (void)cz_setTitle:(NSString *)title {
    [self cz_setNormalTitle:title highlightTitle:title];
}

/** 文本颜色/高亮 */
- (void)cz_setNormalTitleColor:(UIColor *)normalTitleColor highlightTitleColor:(UIColor *)highlightTitleColor {
    [self setTitleColor:normalTitleColor forState:UIControlStateNormal];
    [self setTitleColor:highlightTitleColor forState:UIControlStateHighlighted];
    [self setTitleColor:highlightTitleColor forState:UIControlStateSelected];
    [self setTitleColor:normalTitleColor forState:UIControlStateSelected | UIControlStateHighlighted];
}

/** 文本颜色 */
- (void)cz_setTitleColor:(UIColor *)titleColor {
    [self cz_setNormalTitleColor:titleColor highlightTitleColor:[titleColor cz_addAlpha:0.8]];
}

/** 图片/高亮 */
- (void)cz_setNormalImage:(UIImage *)normalImage highlightImage:(UIImage *)highlightImage {
    [self setImage:normalImage forState:UIControlStateNormal];
    [self setImage:highlightImage forState:UIControlStateHighlighted];
    [self setImage:highlightImage forState:UIControlStateSelected];
    [self setImage:normalImage forState:UIControlStateSelected | UIControlStateHighlighted];
}

/** 图片 */
- (void)cz_setImage:(UIImage *)image {
    [self cz_setNormalImage:image highlightImage:image];
}

/** 背景图片/高亮 */
- (void)cz_setNormalBackgroundImage:(UIImage *)normalBackgroundImage highlightBackgroundColor:(UIImage *)highlightBackgroundImage {
    [self setBackgroundImage:normalBackgroundImage forState:UIControlStateNormal];
    [self setBackgroundImage:highlightBackgroundImage forState:UIControlStateHighlighted];
    [self setBackgroundImage:highlightBackgroundImage forState:UIControlStateSelected];
    [self setBackgroundImage:normalBackgroundImage forState:UIControlStateSelected | UIControlStateHighlighted];
}

/** 背景图片 */
- (void)cz_setBackgroundImage:(UIImage *)backgroundImage {
    [self cz_setNormalBackgroundImage:backgroundImage highlightBackgroundColor:backgroundImage];
}

/** 背景颜色/高亮 */
- (void)cz_setNormalBackgroundColor:(UIColor *)normalBackgroundColor highlightBackgroundColor:(UIColor *)highlightBackgroundColor {
    UIImage *normalBackgroundImage = [UIImage cz_imageFromColor:normalBackgroundColor];
    UIImage *highlightBackgroundImage = [UIImage cz_imageFromColor:highlightBackgroundColor];
    [self cz_setNormalBackgroundImage:normalBackgroundImage highlightBackgroundColor:highlightBackgroundImage];
}

/** 背景颜色 */
- (void)cz_setBackgroundColor:(UIColor *)backgroundColor {
    [self cz_setNormalBackgroundColor:backgroundColor highlightBackgroundColor:[backgroundColor cz_addAlpha:0.8]];
}






@end
