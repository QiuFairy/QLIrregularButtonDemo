//
//  UIImage+ColorAtPoint.h
//  QLIrregularButtonDemo
//
//  Created by qiu on 2021/1/5.
//  Copyright © 2021 qiu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ColorAtPoint)
/**
 *  此点区域的色值
 *
 *  @param point CGPoint
 *
 *  @return 色值
 */
- (UIColor *)colorAtPoint:(CGPoint)point;
@end

NS_ASSUME_NONNULL_END
