//
//  CircleButton.h
//  QLIrregularButtonDemo
//
//  Created by qiu on 2021/1/5.
//  Copyright © 2021 qiu. All rights reserved.
//

/**
 此文件主要是解决具体的btn绘图
 */
#import "IrregularButton.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, CircleType) {
    CircleTypeTopNone,
    CircleTypeTopLeft,
    CircleTypeTopRight,
    CircleTypeBottomLeft,
    CircleTypeBottomRight,
    CircleTypeAllCircle,
};
@interface CircleButton : IrregularButton

@property(nonatomic, assign)CircleType circleType;

@end

NS_ASSUME_NONNULL_END
