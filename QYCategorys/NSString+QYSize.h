//
//  NSString+QYSize.h
//  Pods
//
//  Created by 乔岩 on 2017/6/7.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSString (QYSize)

/**
 string size with NSLineBreakMode
 */
- (CGSize)qy_sizeForFont:(UIFont *)font size:(CGSize)size attributes:(nullable NSDictionary<NSString *, id> *)attributes;

/**
 width
 */
- (CGFloat)qy_widthForFont:(UIFont *)font;

/**
 height
 */
- (CGFloat)qy_heightForFont:(UIFont *)font width:(CGFloat)width;

@end
NS_ASSUME_NONNULL_END
