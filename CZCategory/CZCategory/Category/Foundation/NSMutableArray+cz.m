//
//  NSMutableArray+cz.m
//  CZCategory
//
//  Created by juyiwei on 2019/9/5.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import "NSMutableArray+cz.h"
#import "NSObject+cz.h"

@implementation NSMutableArray (cz)

/** 添加 非空对象 */
- (void)cz_addUnEmptyObj:(id)obj {
    if (CZ_IS_OBJECT_NULL(obj)) {
#if DEBUG
        NSLog(@"对象不存在");
#endif
    } else {
        [self addObject:obj];
    }
}

@end
