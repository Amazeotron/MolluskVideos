//
//  FWCHeartIcon.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/29/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//
//
#import "FWCHeartIcon.h"

@implementation FWCHeartIcon

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(rect) + 0.50977 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.92000 * CGRectGetHeight(rect))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(rect) + 0.08000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.31706 * CGRectGetHeight(rect)) controlPoint1: CGPointMake(CGRectGetMinX(rect) + 0.50977 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.92000 * CGRectGetHeight(rect)) controlPoint2: CGPointMake(CGRectGetMinX(rect) + 0.08000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.65177 * CGRectGetHeight(rect))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(rect) + 0.50977 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.18786 * CGRectGetHeight(rect)) controlPoint1: CGPointMake(CGRectGetMinX(rect) + 0.08000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + -0.01765 * CGRectGetHeight(rect)) controlPoint2: CGPointMake(CGRectGetMinX(rect) + 0.40926 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.06393 * CGRectGetHeight(rect))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(rect) + 0.92000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.31706 * CGRectGetHeight(rect)) controlPoint1: CGPointMake(CGRectGetMinX(rect) + 0.60811 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.06650 * CGRectGetHeight(rect)) controlPoint2: CGPointMake(CGRectGetMinX(rect) + 0.92000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + -0.01828 * CGRectGetHeight(rect))];
    [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(rect) + 0.50977 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.92000 * CGRectGetHeight(rect)) controlPoint1: CGPointMake(CGRectGetMinX(rect) + 0.92000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.65241 * CGRectGetHeight(rect)) controlPoint2: CGPointMake(CGRectGetMinX(rect) + 0.50977 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.92000 * CGRectGetHeight(rect))];
    [bezierPath closePath];
    [[UIColor whiteColor] setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
}

@end
