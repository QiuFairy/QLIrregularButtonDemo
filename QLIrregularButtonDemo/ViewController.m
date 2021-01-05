//
//  ViewController.m
//  QLIrregularButtonDemo
//
//  Created by qiu on 2021/1/5.
//  Copyright © 2021 qiu. All rights reserved.
//

#import "ViewController.h"
#import "CircleButton.h"
#import "SectorButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self option1];
    
    [self option2];
}

#pragma mark -- 方法1
/**
 可以用来解决部分好绘制的按钮
 */
- (void)option1{
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-100, 100, 210, 210)];
    bgView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:bgView];
    
    CircleButton *btn = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 0, 100, 100);
    [btn setTitle:@"topleft" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setCircleType:CircleTypeTopLeft];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn];
    
    CircleButton *btn1 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn1.frame = CGRectMake(105, 0, 100, 100);
    [btn1 setTitle:@"topright" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn1 setBackgroundColor:[UIColor redColor]];
    [btn1 setCircleType:CircleTypeTopRight];
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn1];
    
    CircleButton *btn2 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(0, 105, 100, 100);
    [btn2 setTitle:@"bottomLeft" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor redColor]];
    [btn2 setCircleType:CircleTypeBottomLeft];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn2];
    
    CircleButton *btn3 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn3.frame = CGRectMake(105, 105, 100, 100);
    [btn3 setTitle:@"bottomRight" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 setBackgroundColor:[UIColor redColor]];
    [btn3 setCircleType:CircleTypeBottomRight];
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn3];
    
    
    CircleButton *btn4 = [CircleButton buttonWithType:UIButtonTypeSystem];
    btn4.bounds = CGRectMake(0, 0, 100, 100);
    btn4.center = bgView.center;
    [btn4 setTitle:@"circle" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn4 setBackgroundColor:[UIColor blueColor]];
    [btn4 setCircleType:CircleTypeAllCircle];
    [btn4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
}

-(void)btnClick:(UIButton *)sender{
    NSLog(@"点击了区域内==%@,区域外我是无法响应的哟",sender.titleLabel.text);
}

#pragma mark -- 方法2
/**
 可以使用图片来解决绘制问题
 图片的空白部分颜色需要为透明色
 */
- (void)option2{
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.frame)-150, 360, 300, 300)];
    bgView.backgroundColor = [UIColor redColor];
    [self.view addSubview:bgView];
    
    SectorButton *btn = [SectorButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 200, 100);
    btn.center = CGPointMake(CGRectGetMidX(bgView.bounds), CGRectGetHeight(btn.frame)/2);
    [btn setImage:[UIImage imageNamed:@"top"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"top"] forState:UIControlStateHighlighted];
    [btn addTarget:self action:@selector(btnClick2:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn];
    
    SectorButton *btn1 = [SectorButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(0, 0, 100, 200);
    btn1.center = CGPointMake(CGRectGetWidth(btn1.frame)/2, CGRectGetMidY(bgView.bounds));
    [btn1 setImage:[UIImage imageNamed:@"left"] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btnClick2:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn1];
    
    SectorButton *btn2 = [SectorButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(0, 0, 200, 100);
    btn2.center = CGPointMake(CGRectGetMidX(bgView.bounds), CGRectGetMidY(bgView.bounds)+CGRectGetHeight(btn2.frame));
    [btn2 setImage:[UIImage imageNamed:@"bottom"] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btnClick2:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn2];
    
    SectorButton *btn3 = [SectorButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(0, 0, 100, 200);
    btn3.center = CGPointMake(CGRectGetMidX(bgView.bounds)+CGRectGetWidth(btn3.frame), CGRectGetMidY(bgView.bounds));
    [btn3 setImage:[UIImage imageNamed:@"right"] forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(btnClick2:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:btn3];
    
    SectorButton *btn4 = [SectorButton buttonWithType:UIButtonTypeCustom];
    btn4.bounds = CGRectMake(0, 0, 100, 100);
    btn4.center = bgView.center;
    [btn4 setImage:[UIImage imageNamed:@"center"] forState:UIControlStateNormal];
    [btn4 addTarget:self action:@selector(btnClick2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
}
-(void)btnClick2:(UIButton *)sender{
    NSLog(@"我是采用的透明色，点击了区域内==%@",NSStringFromCGRect(sender.bounds));
}
@end
