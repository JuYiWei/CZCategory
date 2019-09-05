//
//  NSData+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/4.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (cz)

/** Json Data -> Json String */
- (NSString *)cz_utf8String;

@end


@interface NSData (czEncode)

/** Base64 编码 */
- (NSString *)cz_base64Encode;

/** Base64 解码 */
- (NSString *)cz_base64Decode;

@end


/** 统一为小写，大写 自己 uppercaseString */
@interface NSData (czHash)

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


NS_ASSUME_NONNULL_END
