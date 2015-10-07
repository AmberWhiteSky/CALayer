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
    
    
    //1.view.layer会准备一个layer graphice context (图层类型上下文)
    //2. 调用view.layer.delegate（view）的drawlayer:incontext，并传入刚才准备好的上下文
    //3. drawlayer,incontext方法内部又会掉用drawrect方法
    //4.view就可以在drawrect方法中实现绘图代码 所有东西最终都会绘制到view.layer上面
    //5.系统在将view.layer的内容拷贝到屁屏幕，于是完成了view的显示
    
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
