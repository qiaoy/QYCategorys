//
//  NSString+QYSize.m
//  Pods
//
//  Created by 乔岩 on 2017/6/7.
//
//

#import "NSString+QYSize.h"

@implementation NSString (QYSize)

- (CGSize)qy_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode {
    CGSize result;
    if (!font) font = [UIFont systemFontOfSize:12];
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableDictionary *attr = [NSMutableDictionary new];
        attr[NSFontAttributeName] = font;
        if (lineBreakMode != NSLineBreakByWordWrapping) {
            NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
            paragraphStyle.lineBreakMode = lineBreakMode;
            attr[NSParagraphStyleAttributeName] = paragraphStyle;
        }
        CGRect rect = [self boundingRectWithSize:size
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:attr context:nil];
        result = rect.size;
    }
    else {
        result = [self sizeWithFont:font constrainedToSize:size lineBreakMode:lineBreakMode];
    }
    return result;
}

- (CGFloat)qy_widthForFont:(UIFont *)font
{
    CGSize size = [self qy_sizeForFont:font size:CGSizeMake(HUGE, HUGE) mode:NSLineBreakByWordWrapping];
    return size.width;
}

- (CGFloat)qy_heightForFont:(UIFont *)font width:(CGFloat)width
{
    CGSize size = [self qy_sizeForFont:font size:CGSizeMake(width, HUGE) mode:NSLineBreakByWordWrapping];
    return size.height;
}

@end
