//
//  UIView+cz.m
//  Library
//
//  Created by juyiwei on 2018/9/5.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import "UIView+cz.h"

@implementation UIView (cz)

/** min x */
- (CGFloat)cz_minX {
    return CGRectGetMinX(self.frame);
}

/** max x */
- (CGFloat)cz_maxX {
    return CGRectGetMaxX(self.frame);
}

/** min y */
- (CGFloat)cz_minY {
    return CGRectGetMinY(self.frame);
}

/** max y */
- (CGFloat)cz_maxY {
    return CGRectGetMaxY(self.frame);
}

/** width */
- (CGFloat)cz_width {
    return CGRectGetWidth(self.frame);
}

/** height */
- (CGFloat)cz_height {
    return CGRectGetHeight(self.frame);
}

/** view 生成图片 */
- (UIImage *)cz_viewCapture {
    UIImage* image = nil;
    UIGraphicsBeginImageContext(self.bounds.size);
    {
        self.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [UIScreen mainScreen].scale);
        [self.layer renderInContext: UIGraphicsGetCurrentContext()];
        image = UIGraphicsGetImageFromCurrentImageContext();
    }
    UIGraphicsEndImageContext();
    
    return image;
}

@end
