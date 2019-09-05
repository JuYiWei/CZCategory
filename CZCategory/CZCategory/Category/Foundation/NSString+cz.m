//
//  NSString+cz.m
//  Library
//
//  Created by juyiwei on 2018/9/13.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import "NSString+cz.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (cz)

/** 通用文本 计算大小 */
- (CGRect)cz_rectWithAttributes:(NSDictionary *)attributes {
    CGRect rect = [self boundingRectWithSize:CGSizeZero options:NSStringDrawingUsesFontLeading attributes:attributes context:nil];
    return rect;
}

/** 常用文本 计算大小 */
- (CGRect)cz_rectWithFont:(UIFont *)font {
    NSDictionary *attributes = @{NSFontAttributeName: font};
    return [self cz_rectWithAttributes:attributes];
}


@end


@implementation NSString (czHash)

/** 非标准 CRC */
- (NSInteger)cz_crcValue {
    NSData *crcData = [self dataUsingEncoding:NSUTF8StringEncoding];
    Byte *crcBytes = (Byte *)crcData.bytes;
    NSUInteger crcLen = crcData.length;
    
    const NSUInteger initValue = 0xFFFF;
    const NSUInteger divValue = 0x258B;
    
    NSInteger crcValue = initValue;
    NSUInteger crcCheck;
    for (NSUInteger i = 0; i < crcLen; i++) {
        crcValue = crcValue ^ crcBytes[i];
        for (NSUInteger j = 0; j < 8; j++)  {
            crcCheck = crcValue & 1;
            crcValue = crcValue >> 1;
            if (crcCheck == 1) {
                crcValue = crcValue ^ divValue;
            }
        }
    }

    return crcValue;
}

/** MD5 */
- (NSString *)cz_md5 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** MD5 16位（8-24） */
- (NSString *)cz_md5_16 {
    NSString *mStr = [self cz_md5];
    if (mStr.length != 32) {
        return @"";
    }
    return [mStr substringWithRange:NSMakeRange(8, 16)];
}

/** SHA 1 */
- (NSString *)cz_sha1 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 224 */
- (NSString *)cz_sha224 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_SHA224_DIGEST_LENGTH];
    CC_SHA224(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 256 */
- (NSString *)cz_sha256 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 384 */
- (NSString *)cz_sha384 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_SHA384_DIGEST_LENGTH];
    CC_SHA384(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 512 */
- (NSString *)cz_sha512 {
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

@end


@implementation NSString (czJson)

/** Json 字符串 -> OC 对象（NSString、NSArray、NSDictionary） */
- (id)cz_jsonObject {
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    id obj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves | NSJSONReadingAllowFragments error:&error];
    if ([obj isKindOfClass:[NSString class]] ||
        [obj isKindOfClass:[NSArray class]] ||
        [obj isKindOfClass:[NSDictionary class]]) {
        return obj;
    }
    return nil;
}

@end


@implementation NSString (czEncode)

/** URL 编码 */
- (NSString *)cz_URLEncode {
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

/** URL 解码 */
- (NSString *)cz_URLDecode {
    return [self stringByRemovingPercentEncoding];
}

/** Base64 编码 */
-(NSString *)cz_base64Encode {
    NSData *data =[self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

/** Base64 解码 */
-(NSString *)cz_base64Decode {
    NSData *data=[[NSData alloc]initWithBase64EncodedString:self options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}

@end


@implementation NSString (czRegex)

// 通用
- (BOOL)cz_isValidateByRegex:(NSString *)regex {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [predicate evaluateWithObject:self];
}

/** 手机号 11 位 */
- (BOOL)cz_isValidMobile {
    NSString *regex = @"^[0-9]{0,11}";
    return [self cz_isValidateByRegex:regex];
}

/** 邮箱 */
- (BOOL)cz_isValidEmailAddress {
    NSString *regex = @"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    return [self cz_isValidateByRegex:regex];
}

/** 身份证 */
- (BOOL)cz_isValidIdentityCard {
    NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    return [self cz_isValidateByRegex:regex];
}

/** 网址 */
- (BOOL)cz_isValidUrl {
    NSString *regex = @"^((http)|(https))+:[^\\s]+\\.[^\\s]*$";
    return [self cz_isValidateByRegex:regex];
}

/** 中文 */
- (BOOL)cz_isValidChinese {
    NSString *regex = @"^[\u4e00-\u9fa5]+$";
    return [self cz_isValidateByRegex:regex];
}

/** 密码：英文+数字+下划线 指定长度 */
- (BOOL)cz_isValidPasswordMin:(NSInteger)minLenth max:(NSInteger)maxLenth {
    NSString *regex = [NSString stringWithFormat:@"[A-Za-z0-9_]{%ld,%ld}", (long)minLenth, (long)maxLenth];
    return [self cz_isValidateByRegex:regex];
}

@end
