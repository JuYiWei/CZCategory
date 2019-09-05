//
//  NSData+cz.m
//  CZCategory
//
//  Created by juyiwei on 2019/9/4.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "NSData+cz.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (cz)

/** Json Data -> UTF-8 String */
- (NSString *)cz_utf8String {
    NSString *string = [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
    return string;
}

@end


@implementation NSData (czEncode)

/** Base64 编码 */
- (NSString *)cz_base64Encode {
    return [self base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

/** Base64 解码 */
- (NSString *)cz_base64Decode {
    return [[NSString alloc]initWithData:self encoding:NSUTF8StringEncoding];
}

@end


@implementation NSData (czHash)

/** 非标准 CRC */
- (NSInteger)cz_crcValue {
    NSData *crcData = self;
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
    const char *cStr = [self bytes];
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
    const char *cStr = [self bytes];
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 224 */
- (NSString *)cz_sha224 {
    const char *cStr = [self bytes];
    unsigned char digest[CC_SHA224_DIGEST_LENGTH];
    CC_SHA224(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA224_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA224_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 256 */
- (NSString *)cz_sha256 {
    const char *cStr = [self bytes];
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 384 */
- (NSString *)cz_sha384 {
    const char *cStr = [self bytes];
    unsigned char digest[CC_SHA384_DIGEST_LENGTH];
    CC_SHA384(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA384_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA384_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

/** SHA 512 */
- (NSString *)cz_sha512 {
    const char *cStr = [self bytes];
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512(cStr, (CC_LONG)strlen(cStr), digest);
    NSMutableString *result = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA512_DIGEST_LENGTH; i++)
        [result appendFormat:@"%02x", digest[i]];
    return result;
}

@end
