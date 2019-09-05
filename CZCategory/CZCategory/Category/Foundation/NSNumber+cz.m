//
//  NSNumber+cz.m
//  CZCategory
//
//  Created by juyiwei on 2019/9/5.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "NSNumber+cz.h"

@implementation NSNumber (cz)

/** 常用组合，自定义 */
- (NSString *)cz_stringWithStyle:(NSNumberFormatterStyle)style
                        useGroup:(BOOL)useGroup
                       minDigits:(NSInteger)minDigits
                       maxDigits:(NSInteger)maxDigits {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = style;
    formatter.minimumFractionDigits = minDigits;
    formatter.maximumFractionDigits = maxDigits;
    formatter.groupingSeparator = useGroup ? @"," : @"";
    if (![self isKindOfClass:[NSNumber class]]) {
        return @"?";
    }
    return [formatter stringFromNumber:self];
}

#pragma mark - 普通小数 123.123

/** 2 位小数 */
- (NSString *)cz_stringDecimal2 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:NO minDigits:2 maxDigits:2];
}

/** 最多 2 位小数 */
- (NSString *)cz_stringDecimalShort2 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:NO minDigits:0 maxDigits:2];
}

/** 3 位小数 */
- (NSString *)cz_stringDecimal3 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:NO minDigits:3 maxDigits:3];
}

/** 最多 3 位小数 */
- (NSString *)cz_stringDecimalShort3 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:NO minDigits:0 maxDigits:3];
}

#pragma mark - 千分位分割小数 123,123.123

/** 千分位分组，2 位小数 */
- (NSString *)cz_stringGroupDecimal2 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:YES minDigits:2 maxDigits:2];
}

/** 千分位分组，最多 2 位小数*/

- (NSString *)cz_stringGroupDecimalShort2 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:YES minDigits:0 maxDigits:2];
}

/** 千分位分组，3 位小数*/

- (NSString *)cz_stringGroupDecimal3 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:YES minDigits:3 maxDigits:3];
}

/** 千分位分组，最多 3 位小数 */
- (NSString *)cz_stringGroupDecimalShort3 {
    return [self cz_stringWithStyle:NSNumberFormatterDecimalStyle useGroup:YES minDigits:0 maxDigits:3];
}

#pragma mark - 普通百分数小数 23.123%

/** 百分数，0 位小数 */
- (NSString *)cz_stringPercentDecimalShort0 {
    return [self cz_stringWithStyle:NSNumberFormatterPercentStyle useGroup:NO minDigits:0 maxDigits:0];
}

/** 百分数，1 位小数 */
- (NSString *)cz_stringPercentDecimalShort1 {
    return [self cz_stringWithStyle:NSNumberFormatterPercentStyle useGroup:NO minDigits:0 maxDigits:1];
}

/** 百分数，2 位小数 */
- (NSString *)cz_stringPercentDecimalShort2 {
    return [self cz_stringWithStyle:NSNumberFormatterPercentStyle useGroup:NO minDigits:0 maxDigits:2];
}

/** 百分数，3 位小数 */
- (NSString *)cz_stringPercentDecimalShort3 {
    return [self cz_stringWithStyle:NSNumberFormatterPercentStyle useGroup:NO minDigits:0 maxDigits:3];
}

@end
