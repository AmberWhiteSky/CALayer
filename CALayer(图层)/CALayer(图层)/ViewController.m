//
//  ViewController.m
//  CALayer(图层)
//
//  Created by AmberWhiteSky on 15/10/4.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIImageView *grilView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self  test3dimageview];
   }


-(void)  test3dimageview{
    
//    self.grilView.layer.transform=CATransform3DMakeScale(1.5, 0.5, 0);
//    self.grilView.transform = CGAffineTransformMakeRotation(M_PI_4);
    
//    self.grilView.layer.transform = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
//    
//    NSValue  *value =[NSValue  valueWithCATransform3D:CATransform3DMakeRotation(M_PI_4, 0, 0, 1)];
//    
//    [self.grilView.layer setValue:value forKeyPath:@"transform"];
    
    
    [self.grilView.layer setValue:@(M_PI_2) forKeyPath:@"transform.roation"];
    
    self.grilView.layer.transform = CATransform3DMakeScale(0.5, 2, 0);

    [self.grilView.layer setValue:[NSValue  valueWithCATransform3D:CATransform3DMakeScale(0.5, 2, 0)] forKeyPath:@"transform'"];
    
    [self.grilView.layer  setValue:@(0.5) forKeyPath:@"transform.scale.y"];
}


-(void) testImageView{
    self.grilView.layer.borderWidth=10;
    //边框的颜色
    self.grilView.layer.borderColor=[UIColor  greenColor].CGColor;
    //圆角的半径
    self.grilView.layer.cornerRadius=10;
    //超出部分裁剪掉
    self.grilView.layer.masksToBounds=YES;

    
    
    //阴影的颜色
    self.grilView.layer.shadowColor= [UIColor  redColor].CGColor;
    //阴影的位置
    self.grilView.layer.shadowOffset=CGSizeMake(10, 10);
    //阴影不透明度
    self.grilView.layer.shadowOpacity=0.5;

}

-(void) testView{
    //边框的宽度
    self.blueView.layer.borderWidth=10;
    //边框的颜色
    self.blueView.layer.borderColor=[UIColor  greenColor].CGColor;
    //圆角的半径
    self.blueView.layer.cornerRadius=10;
    //阴影的颜色
    self.blueView.layer.shadowColor= [UIColor  redColor].CGColor;
    //阴影的位置
    self.blueView.layer.shadowOffset=CGSizeMake(10, 10);
    //阴影不透明度
    self.blueView.layer.shadowOpacity=0.5;
    //超出部分裁剪掉
    self.blueView.layer.masksToBounds=NO;


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
