//
//  MyLayer.m
//  CALayer(自定义图层)
//
//  Created by AmberWhiteSky on 15/10/6.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "MyLayer.h"

@implementation MyLayer


-(void)drawInContext:(CGContextRef)ctx {
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 1);
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 100));
    CGContextFillPath(ctx);

}



@end
