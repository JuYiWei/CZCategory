//
//  NSObject+cz.m
//  CZLibrary
//
//  Created by juyiwei on 2018/9/28.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import "NSObject+cz.h"

@implementation NSObject (cz)

/** 判断对象为 nil 或者是 Null 对象 */
+ (BOOL)cz_objectIsEmpty:(id)obj {
    return (!obj || [obj isKindOfClass:[NSNull class]]);
}

@end


@implementation NSObject (czJson)

/** obj -> Data 压缩 */
- (NSData *)cz_jsonData {
    if ([self isKindOfClass:[NSArray class]] ||
        [self isKindOfClass:[NSDictionary class]]) {
        NSError *error;
        NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONReadingMutableLeaves | NSJSONReadingAllowFragments error:&error];
        if (![data isKindOfClass:[NSData class]]) {
            return [NSData data];
        } else {
            return data;
        }
    } else if ([self isKindOfClass:[NSString class]]) {
        return [(NSString *)self dataUsingEncoding:NSUTF8StringEncoding];
    } else if ([self isKindOfClass:[NSData class]]) {
        return (NSData *)self;
    } else {
        return [NSData data];
    }
}

/** obj -> Json Data 格式化 */
- (NSData *)cz_jsonDataPrettyPrinted {
    if ([self isKindOfClass:[NSArray class]] ||
        [self isKindOfClass:[NSDictionary class]]) {
        NSError *error;
        NSData *data = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
        if (![data isKindOfClass:[NSData class]]) {
            return [NSData data];
        } else {
            return data;
        }
    } else if ([self isKindOfClass:[NSString class]]) {
        return [(NSString *)self dataUsingEncoding:NSUTF8StringEncoding];
    } else if ([self isKindOfClass:[NSData class]]) {
        return (NSData *)self;
    } else {
        return [NSData data];
    }
}

@end
