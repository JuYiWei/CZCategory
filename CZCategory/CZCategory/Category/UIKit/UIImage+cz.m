//
//  UIImage+cz.m
//  Library
//
//  Created by juyiwei on 2018/9/11.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import "UIImage+cz.h"

@implementation UIImage (cz)

#pragma mark - 类方法

/** 颜色生成图片，指定尺寸 */
+ (UIImage *)cz_imageFromColor:(UIColor *)color size:(CGSize)size {
    CGFloat width = size.width < 1 ? 1 : size.width;
    CGFloat height = size.height < 1 ? 1 : size.height;
    if (!color) {
        color = [UIColor blackColor];
    }
    CGRect rect = CGRectMake(0.0f, 0.0f, width, height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    
    return theImage;
}

/** 颜色生成图片，默认尺寸 1x1 */
+ (UIImage *)cz_imageFromColor:(UIColor *)color {
    return [self cz_imageFromColor:color size:CGSizeMake(1, 1)];
}

/** 生成二维码，通用参数 */
+ (UIImage *)cz_createQRImageWithContent:(NSString *)content quility:(CZImageQRQuility)quility scale:(CGFloat)scale {
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    [filter setValue:data forKey:@"inputMessage"];
    NSString *quilityStr = @"M";
    switch (quility) {
        case CZImageQRQuilityL: {
            quilityStr = @"L";
        }
            break;
        case CZImageQRQuilityM: {
            quilityStr = @"M";
        }
            break;
        case CZImageQRQuilityQ: {
            quilityStr = @"Q";
        }
            break;
        case CZImageQRQuilityH: {
            quilityStr = @"H";
        }
            break;
    }
    [filter setValue:quilityStr forKey:@"inputCorrectionLevel"];
    CIImage *outputImage = filter.outputImage;
    CGAffineTransform transform = CGAffineTransformMakeScale(scale, scale);
    CIImage *transformImage = [outputImage imageByApplyingTransform:transform];
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [context createCGImage:transformImage fromRect:transformImage.extent];
    UIImage *qrCodeImage = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    
    return qrCodeImage;
}

/** 生成二维码，指定放大 */
+ (UIImage *)cz_createQRImageWithContent:(NSString *)content scale:(CGFloat)scale {
    return [self cz_createQRImageWithContent:content quility:CZImageQRQuilityM scale:scale];
}

/** 生成二维码，默认 */
+ (UIImage *)cz_createQRImageWithContent:(NSString *)content {
    return [self cz_createQRImageWithContent:content quility:CZImageQRQuilityM scale:4];
}

#pragma mark - 实例方法

/** 识别二维码 */
- (NSString *)cz_scanQRCodeFromImage {
    CIDetector *detector = [CIDetector detectorOfType:CIDetectorTypeQRCode context:nil options:@{CIDetectorAccuracy:CIDetectorAccuracyHigh}];
    CIImage *image = [[CIImage alloc] initWithImage:self];
    NSArray *features = [detector featuresInImage:image];
    CIQRCodeFeature *feature = [features firstObject];
    if (feature) {
        return feature.messageString;
    } else {
        return @"NOT FOUND";
    }
}

@end
