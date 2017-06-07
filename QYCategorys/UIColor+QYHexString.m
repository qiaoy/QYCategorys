//
//  UIColor+HexString.m
//  Pods
//
//  Created by 乔岩 on 2017/5/9.
//
//

#import "UIColor+QYHexString.h"

@implementation UIColor (QYHexString)


+ (instancetype)colorWithHexString:(NSString *)hexStr {
    CGFloat r, g, b, a;
    if (p_hexStrToRGBA(hexStr, &r, &g, &b, &a)) {
        return [UIColor colorWithRed:r green:g blue:b alpha:a];
    }
    return nil;
}

static inline NSUInteger p_hexStrToInt(NSString *str) {
    uint32_t result = 0;
    sscanf([str UTF8String], "%X", &result);
    return result;
}

static BOOL p_hexStrToRGBA(NSString *str,
                         CGFloat *r, CGFloat *g, CGFloat *b, CGFloat *a) {
    str = [str uppercaseString];
    if ([str hasPrefix:@"#"]) {
        str = [str substringFromIndex:1];
    } else if ([str hasPrefix:@"0X"]) {
        str = [str substringFromIndex:2];
    }
    
    NSUInteger length = [str length];
    if (length != 3 && length != 4 && length != 6 && length != 8) {
        return NO;
    }
    
    //RGB,RGBA,RRGGBB,RRGGBBAA
    if (length < 5) {
        *r = p_hexStrToInt([str substringWithRange:NSMakeRange(0, 1)]) / 255.0f;
        *g = p_hexStrToInt([str substringWithRange:NSMakeRange(1, 1)]) / 255.0f;
        *b = p_hexStrToInt([str substringWithRange:NSMakeRange(2, 1)]) / 255.0f;
        if (length == 4)  *a = p_hexStrToInt([str substringWithRange:NSMakeRange(3, 1)]) / 255.0f;
        else *a = 1;
    } else {
        *r = p_hexStrToInt([str substringWithRange:NSMakeRange(0, 2)]) / 255.0f;
        *g = p_hexStrToInt([str substringWithRange:NSMakeRange(2, 2)]) / 255.0f;
        *b = p_hexStrToInt([str substringWithRange:NSMakeRange(4, 2)]) / 255.0f;
        if (length == 8) *a = p_hexStrToInt([str substringWithRange:NSMakeRange(6, 2)]) / 255.0f;
        else *a = 1;
    }
    return YES;
}

@end
