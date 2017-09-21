//
//  CALayer+BorderColor.m
//  AllMountain
//
//  Created by WXL-TECH on 2017/9/9.
//  Copyright © 2017年 WXL-TECH. All rights reserved.
//

#import "CALayer+BorderColor.h"

@implementation CALayer (BorderColor)

- (void)setBorderColorWithUIColor:(UIColor *)color
{
    self.borderColor = color.CGColor;
}

@end
