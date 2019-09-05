//
//  NSDictionary+cz.h
//  CZLibrary
//
//  Created by juyiwei on 2018/10/25.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (cz)

/** NSDictionary -> Json 字符串 压缩 */
- (NSString *)cz_jsonString;

/** NSDictionary -> Json 字符串 可读 */
- (NSString *)cz_jsonStringPrettyPrinted;

@end

NS_ASSUME_NONNULL_END
