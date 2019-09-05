//
//  UIDevice+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/4.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (cz)

/** 设备型号标识 */
+ (NSString *)cz_deviceModel;

/** 设备信息：iPhone|iPhone7,1|iOS|12.0.1|-1.00 */
+ (NSString *)cz_deviceInfo;

@end

NS_ASSUME_NONNULL_END
