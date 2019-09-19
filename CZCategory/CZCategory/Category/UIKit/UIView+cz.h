//
//  UIView+cz.h
//  Library
//
//  Created by juyiwei on 2018/9/5.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (cz)

/** min x */
- (CGFloat)cz_minX;

/** max x */
- (CGFloat)cz_maxX;

/** min y */
- (CGFloat)cz_minY;

/** max y */
- (CGFloat)cz_maxY;

/** width */
- (CGFloat)cz_width;

/** height */
- (CGFloat)cz_height;

/** view 生成图片 */
- (UIImage *)cz_viewCapture;

@end
