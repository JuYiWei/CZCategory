//
//  NSMutableDictionary+cz.m
//  Library
//
//  Created by juyiwei on 2018/9/13.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import "NSMutableDictionary+cz.h"
#import "NSObject+cz.h"

@implementation NSMutableDictionary (cz)

/** 添加 非空对象 */
- (void)cz_addUnEmptyObj:(id)obj forKey:(NSString *)key {
    if (CZ_IS_OBJECT_NULL(obj)) {
#if DEBUG
        NSLog(@"对象不存在：%@", key);
#endif
    } else {
        [self setObject:obj forKey:key];
    }
}

/** 添加 非空字符串，主要用于接口参数上传 */
- (void)cz_addUnEmptyString:(id)obj forKey:(NSString *)key {
    if ([obj isKindOfClass:[NSString class]]) {
        [self setObject:obj forKey:key];
        
    } else if ([obj isKindOfClass:[NSNumber class]]) {
        NSString *string = [NSString stringWithFormat:@"%@", obj];
        [self setObject:string forKey:key];
        
    } else {
#if DEBUG
        NSLog(@"参数值不是 String 或者 Number：%@", key);
#endif
    }
}

@end
