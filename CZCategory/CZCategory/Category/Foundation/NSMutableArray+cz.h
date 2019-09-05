//
//  NSMutableArray+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/5.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (cz)

/** 添加 非空对象 */
- (void)cz_addUnEmptyObj:(id)obj;

@end

NS_ASSUME_NONNULL_END
