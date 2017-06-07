//
//  NSString+QYSize.h
//  Pods
//
//  Created by 乔岩 on 2017/6/7.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (QYSize)

/**
 string size with NSLineBreakMode
 */
- (CGSize)qy_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

/**
 width
 */
- (CGFloat)qy_widthForFont:(UIFont *)font;

/**
 height
 */
- (CGFloat)qy_heightForFont:(UIFont *)font width:(CGFloat)width;

@end
