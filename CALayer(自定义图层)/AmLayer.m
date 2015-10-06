//
//  AmLayer.m
//  CALayer(自定义图层)
//
//  Created by AmberWhiteSky on 15/10/6.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "AmLayer.h"

@implementation AmLayer

//图层上下文
-(void)drawInContext:(CGContextRef)ctx {

    //红色
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 1);
    //添加圆
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 50, 59));
    CGContextFillPath(ctx);

}

@end
