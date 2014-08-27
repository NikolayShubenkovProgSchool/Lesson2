//
//  UIColor+PSRRandomColors.m
//  ViewControllerLifeCycle
//
//  Created by n.shubenkov on 27/08/14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "UIColor+PSRRandomColors.h"

@implementation UIColor (PSRRandomColors)

+ (UIColor *)psr_randomColor
{
        return [UIColor colorWithRed:(arc4random() % 255) / 255.0f green:(arc4random() % 255) / 255.0f blue:(arc4random() % 255) / 255.0f alpha:(arc4random() % 255) / 255.0f];
}

@end
