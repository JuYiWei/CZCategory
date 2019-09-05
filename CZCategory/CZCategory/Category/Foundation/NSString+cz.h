//
//  NSString+cz.h
//  Library
//
//  Created by juyiwei on 2018/9/13.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// 取整数位
#define CZ_STRING_INTEGER(a)  [NSString stringWithFormat:@"%ld", (long)a]
// 完整小数
#define CZ_STRING_FLOAT(a)    [NSString stringWithFormat:@"%f", a]
// 可四舍五入成整数
#define CZ_STRING_FLOAT0(a)    [NSString stringWithFormat:@"%.f", a]
// 保留 1 位小数
#define CZ_STRING_FLOAT1(a)    [NSString stringWithFormat:@"%.1f", a]
// 保留 2 位小数
#define CZ_STRING_FLOAT2(a)   [NSString stringWithFormat:@"%.2f", a]
// 保留 3 位小数
#define CZ_STRING_FLOAT3(a)   [NSString stringWithFormat:@"%.3f", a]
// NSNumber 完整转换
#define CZ_STRING_NUMBER(a)   [NSString stringWithFormat:@"%@", a]


@interface NSString (cz)

/** 通用文本 计算大小 */
- (CGRect)cz_rectWithAttributes:(NSDictionary *)attributes;

/** 常用文本 计算大小 */
- (CGRect)cz_rectWithFont:(UIFont *)font;

@end


/** 统一为小写，大写 自己 uppercaseString */
@interface NSString (czHash)

/** 非标准 CRC */
- (NSInteger)cz_crcValue;

/** MD5 */
- (NSString *)cz_md5;

/** MD5 16位（8-24） */
- (NSString *)cz_md5_16;

/** SHA 1 */
- (NSString *)cz_sha1;

/** SHA 224 */
- (NSString *)cz_sha224;

/** SHA 256 */
- (NSString *)cz_sha256;

/** SHA 384 */
- (NSString *)cz_sha384;

/** SHA 512 */
- (NSString *)cz_sha512;

@end


@interface NSString (czJson)

/** Json 字符串 -> OC 对象（nil、NSArray、NSDictionary） */
- (id)cz_jsonObject;

@end


@interface NSString (czEncode)

/** URL 编码 */
- (NSString *)cz_URLEncode;

/** URL 解码 */
- (NSString *)cz_URLDecode;

/** Base64 编码 */
-(NSString *)cz_base64Encode;

/** Base64 解码 */
-(NSString *)cz_base64Decode;

@end


@interface NSString (czRegex)

// 通用
- (BOOL)cz_isValidateByRegex:(NSString *)regex;

/** 手机号 11 位 */
- (BOOL)cz_isValidMobile;

/** 邮箱 */
- (BOOL)cz_isValidEmailAddress;

/** 身份证 */
- (BOOL)cz_isValidIdentityCard;

/** 网址 */
- (BOOL)cz_isValidUrl;

/** 中文 */
- (BOOL)cz_isValidChinese;

/** 密码：英文+数字+下划线 指定长度 */
- (BOOL)cz_isValidPasswordMin:(NSInteger)minLenth max:(NSInteger)maxLenth;

@end
