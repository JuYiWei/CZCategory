//
//  NSMutableDictionary+cz.h
//  Library
//
//  Created by juyiwei on 2018/9/13.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (cz)

/** 添加 非空对象 */
- (void)cz_addUnEmptyObj:(id)obj forKey:(NSString *)key;

/** 添加 非空字符串，主要用于接口参数上传 */
- (void)cz_addUnEmptyString:(id)obj forKey:(NSString *)key;

@end
