//
//  NSBundle+cz.h
//  CZCategory
//
//  Created by juyiwei on 2019/9/4.
//  Copyright © 2019 居祎炜. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CZ_APP_VERSION  [NSBundle cz_appVersion]


NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (cz)

/** APP 版本号 字符串 */
+ (NSString *)cz_appVersion;

@end

NS_ASSUME_NONNULL_END
