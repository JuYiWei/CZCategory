
//
//  NSDictionary+cz.m
//  CZLibrary
//
//  Created by juyiwei on 2018/10/25.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import "NSDictionary+cz.h"
#import "NSObject+cz.h"

@implementation NSDictionary (cz)

/** NSDictionary -> Json 字符串 压缩 */
- (NSString *)cz_jsonString {
    NSData *data = [self cz_jsonData];
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return string;
}

/** NSDictionary -> Json 字符串 可读 */
- (NSString *)cz_jsonStringPrettyPrinted {
    NSData *data = [self cz_jsonDataPrettyPrinted];
    NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return string;
}

@end
