//
//  ViewController.m
//  CALayer(自定义图层)
//
//  Created by AmberWhiteSky on 15/10/5.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"
#import "MyLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    AmLayer *layer =[AmLayer  layer];
//    layer.bounds=CGRectMake(0, 0, 100, 100);
//    [self.view.layer addSublayer: layer];
    
    [self  test2];
    
    
    
    
}

-(void)  test2{
    CALayer  *layer = [CALayer  layer];
    layer.bounds =CGRectMake(0, 0, 100, 100);
    layer.backgroundColor =[UIColor  blackColor].CGColor;
    layer.anchorPoint =CGPointZero;
    layer.position = CGPointMake(100, 100);
    layer.delegate=self;
    [layer setNeedsDisplay];
    [self.view.layer  addSublayer:  layer];

    

}

#pragma  mark  layer delegate
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 1);
    CGContextAddRect(ctx, CGRectMake(0, 0, 20, 20));
    CGContextFillPath(ctx);
    

}


-(void)test{
    MyLayer  *layer =[MyLayer  layer];
    layer.bounds =CGRectMake(0, 0, 100, 100);
    layer.backgroundColor =[UIColor  blueColor].CGColor;
    layer.anchorPoint =CGPointZero;
    //自动刷新
    [layer setNeedsDisplay];
    [self.view.layer  addSublayer:  layer];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
