//
//  NSObject+cz.h
//  CZLibrary
//
//  Created by juyiwei on 2018/9/28.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define CZ_IS_OBJECT_NULL(obj)    ([NSObject cz_objectIsEmpty:obj])

@interface NSObject (cz)

/** 判断对象为 nil 或者是 Null 对象 */
+ (BOOL)cz_objectIsEmpty:(id)obj;

@end


@interface NSObject (czJson)

/** obj -> Data 压缩 */
- (NSData *)cz_jsonData;

/** obj -> Json Data 格式化 */
- (NSData *)cz_jsonDataPrettyPrinted;

@end


NS_ASSUME_NONNULL_END
