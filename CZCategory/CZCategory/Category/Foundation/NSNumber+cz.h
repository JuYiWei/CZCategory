//
//  NSNumber+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/5.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (cz)

/** 常用组合，自定义 */
- (NSString *)cz_stringWithStyle:(NSNumberFormatterStyle)style
                        useGroup:(BOOL)useGroup
                       minDigits:(NSInteger)minDigits
                       maxDigits:(NSInteger)maxDigits;

#pragma mark - 普通小数 123.123

/** 2 位小数 */
- (NSString *)cz_stringDecimal2;

/** 最多 2 位小数 */
- (NSString *)cz_stringDecimalShort2;

/** 3 位小数 */
- (NSString *)cz_stringDecimal3;

/** 最多 3 位小数 */
- (NSString *)cz_stringDecimalShort3;

#pragma mark - 千分位分割小数 123,123.123

/** 千分位分组，2 位小数 */
- (NSString *)cz_stringGroupDecimal2;

/** 千分位分组，最多 2 位小数*/
- (NSString *)cz_stringGroupDecimalShort2;

/** 千分位分组，3 位小数*/
- (NSString *)cz_stringGroupDecimal3;

/** 千分位分组，最多 3 位小数 */
- (NSString *)cz_stringGroupDecimalShort3;

#pragma mark - 普通百分数小数 23.123%

/** 百分数，0 位小数 */
- (NSString *)cz_stringPercentDecimalShort0;

/** 百分数，1 位小数 */
- (NSString *)cz_stringPercentDecimalShort1;

/** 百分数，2 位小数 */
- (NSString *)cz_stringPercentDecimalShort2;

/** 百分数，3 位小数 */
- (NSString *)cz_stringPercentDecimalShort3;

@end

NS_ASSUME_NONNULL_END
