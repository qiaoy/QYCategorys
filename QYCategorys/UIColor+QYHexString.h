//
//  UIColor+HexString.h
//  Pods
//
//  Created by 乔岩 on 2017/5/9.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (QYHexString)

/**
 RGB(#rgb、0xrgb)
 RGBA(#rgba、0xrgba)
 RRGGBB(#rrggbb、0xrrggbb)
 RRGGBBAA(#rrggbbaa、0xrrggbbaa)
**/
+ (UIColor *)colorWithHexString:(NSString *)hexStr;

@end
