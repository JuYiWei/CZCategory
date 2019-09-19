//
//  UIFont+cz.h
//  Library
//
//  Created by juyiwei on 2018/9/13.
//  Copyright © 2018 居祎炜. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CZ_FONT_SYSTEM(value)           [UIFont systemFontOfSize:value]
#define CZ_FONT_BOLD(value)             [UIFont boldSystemFontOfSize:value]
#define CZ_FONT_NAME(name, value)       [UIFont fontWithName:name size:value]

@interface UIFont (cz)

@end
