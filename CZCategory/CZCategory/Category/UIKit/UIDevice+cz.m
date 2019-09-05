//
//  UIDevice+cz.m
//  CZCategory
//
//  Created by juyiwei on 2019/9/4.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "UIDevice+cz.h"
#include  <sys/utsname.h>

@implementation UIDevice (cz)

/** 设备型号标识 */
+ (NSString *)cz_deviceModel {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *machine = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return [NSString stringWithFormat:@"%@", machine];
}

/** 设备信息：iPhone|iPhone7,1|iOS|12.0.1|-1.00 */
+ (NSString *)cz_deviceInfo {
    UIDevice *device = [UIDevice currentDevice];
    return [NSString stringWithFormat:@"%@|%@|%@|%@|%.2f", device.model, [UIDevice cz_deviceModel], device.systemName, device.systemVersion, device.batteryLevel];
}

@end
