//
//  NSBundle+cz.m
//  CZCategory
//
//  Created by juyiwei on 2019/9/4.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "NSBundle+cz.h"

@implementation NSBundle (cz)

/** APP 版本号 字符串 */
+ (NSString *)cz_appVersion {
    return [NSString stringWithFormat:@"%@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
}

@end
