//
//  NSAttributedString+StringByAddingString.m
//  ViewControllerLifeCycle
//
//  Created by admin on 04.09.14.
//  Copyright (c) 2014 n.shubenkov. All rights reserved.
//

#import "NSAttributedString+StringByAddingString.h"

@implementation NSAttributedString (StringByAddingString)
- (NSAttributedString *)psr_attributedStringByAddingString:(NSString *)string withAttributes:(NSDictionary *)attributes
{
    if(!string){
        return self;
    }
    NSMutableAttributedString *referenceString = [self mutableCopy];
    if (!referenceString){
        referenceString = [NSMutableAttributedString new];
    }
    [referenceString appendAttributedString:[[NSAttributedString alloc]initWithString:string attributes:attributes]];
    return [referenceString copy];
}
@end
