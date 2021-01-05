//
//  IrregularButton.h
//  QLIrregularButtonDemo
//
//  Created by qiu on 2021/1/5.
//  Copyright © 2021 qiu. All rights reserved.
//
/**
 此文件主要是解决点击时的响应事件
 */
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IrregularButton : UIButton
@property(nonatomic, strong)UIBezierPath *maskPath;
@end

NS_ASSUME_NONNULL_END
