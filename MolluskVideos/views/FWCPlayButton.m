//
//  FWCPlayButton.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/29/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import "FWCPlayButton.h"

@implementation FWCPlayButton

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
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(rect) + 0.08000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.08000 * CGRectGetHeight(rect))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(rect) + 0.92000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.50000 * CGRectGetHeight(rect))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(rect) + 0.08000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.92000 * CGRectGetHeight(rect))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(rect) + 0.08000 * CGRectGetWidth(rect), CGRectGetMinY(rect) + 0.08000 * CGRectGetHeight(rect))];
    [bezierPath closePath];
    bezierPath.lineJoinStyle = kCGLineJoinRound;
    
    [[UIColor whiteColor] setStroke];
    bezierPath.lineWidth = 4;
    [bezierPath stroke];
}

@end
