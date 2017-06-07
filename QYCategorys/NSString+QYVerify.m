//
//  NSString+QYVerify.m
//  Pods
//
//  Created by 乔岩 on 2017/6/7.
//
//

#import "NSString+QYVerify.h"

@implementation NSString (QYVerify)

- (BOOL)isValid {
    return !(self == nil ||
             self == NULL ||
             ![self isKindOfClass:[NSString class]] ||
             [self isEqualToString:@"(null)"] ||
             self.length == 0 ||
             [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length == 0);
}

@end
