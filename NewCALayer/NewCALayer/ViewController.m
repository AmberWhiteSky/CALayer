//
//  ViewController.m
//  NewCALayer
//
//  Created by AmberWhiteSky on 15/10/5.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)  CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //    CALayer  *layer =[[CALayer alloc]init];
    //    CALayer *layer =[CALayer  layer];
    //    layer.backgroundColor = [UIColor  redColor].CGColor;
    //    layer.bounds=CGRectMake(100, 100, 100 , 100);
    //    layer.position=CGPointMake(200, 200);
    //    layer.cornerRadius =10;
    //    layer.masksToBounds=YES;
    //    layer.contents=(id)[UIImage  imageNamed:@"gril"].CGImage;
    //    [self.view.layer addSublayer:layer];
    
    
    //隐式动画
    
    CALayer  *layer =[CALayer  layer];
    layer.backgroundColor =[UIColor  redColor].CGColor;
    layer.bounds=CGRectMake(150, 180, 100, 100);
    layer.position= CGPointZero;
    layer.anchorPoint=CGPointZero;
    [self.view.layer addSublayer:layer];
    self.layer=layer;
    
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan");
    
    //    self.layer.backgroundColor =[UIColor  blueColor].CGColor;
    [CATransaction begin];//开始事务
    [CATransaction setDisableActions:YES];
    self.layer.opacity=0.5;//隐式动画
    [CATransaction commit];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
