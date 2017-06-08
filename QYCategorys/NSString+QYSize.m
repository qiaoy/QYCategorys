//
//  NSString+QYSize.m
//  Pods
//
//  Created by 乔岩 on 2017/6/7.
//
//

#import "NSString+QYSize.h"

@implementation NSString (QYSize)

- (CGSize)qy_sizeForFont:(UIFont *)font size:(CGSize)size attributes:(nullable NSDictionary<NSString *, id> *)attributes {
    CGSize result;
    if (attributes) {
        result = [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                 attributes:attributes
                                    context:nil].size;
    } else {
        result = [self sizeWithAttributes:@{NSFontAttributeName: font}];
    }
    
    return result;
}

- (CGFloat)qy_widthForFont:(UIFont *)font
{
    CGSize size = [self qy_sizeForFont:font size:CGSizeMake(HUGE, HUGE) attributes:nil];
    return size.width;
}

- (CGFloat)qy_heightForFont:(UIFont *)font width:(CGFloat)width
{
    CGSize size = [self qy_sizeForFont:font size:CGSizeMake(width, HUGE) attributes:nil];
    return size.height;
}

@end
