//
//  NSAttributedString+StringByAddingString.h
//  ViewControllerLifeCycle
//
//  Created by admin on 04.09.14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (StringByAddingString)
- (NSAttributedString *)psr_attributedStringByAddingString:(NSString *)string withAttributes:(NSDictionary *)attributes;
@end
