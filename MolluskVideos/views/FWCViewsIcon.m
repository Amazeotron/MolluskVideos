//
//  FWCViewsIcon.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/29/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import "FWCViewsIcon.h"

@implementation FWCViewsIcon

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
    //// Subframes
    CGRect group = CGRectMake(CGRectGetMinX(rect) + floor(CGRectGetWidth(rect) * 0.00000 + 0.5), CGRectGetMinY(rect) + floor(CGRectGetHeight(rect) * 0.28000 + 0.5), floor(CGRectGetWidth(rect) * 1.00000 + 0.5) - floor(CGRectGetWidth(rect) * 0.00000 + 0.5), floor(CGRectGetHeight(rect) * 0.76000 + 0.5) - floor(CGRectGetHeight(rect) * 0.28000 + 0.5));
    
    
    //// Group
    {
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.01042 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group))];
        [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.48745 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.01042 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.15013 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02000 * CGRectGetHeight(group))];
        [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.98958 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.82476 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.98958 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group))];
        [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.48745 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.98958 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.80807 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98000 * CGRectGetHeight(group))];
        [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.01042 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.16682 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.98000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.01042 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51655 * CGRectGetHeight(group))];
        [bezier2Path closePath];
        [[UIColor whiteColor] setStroke];
        bezier2Path.lineWidth = 1;
        [bezier2Path stroke];
        
        
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69270 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.08659 * CGRectGetHeight(group))];
        [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.66941 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.68527 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.76219 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.26665 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.75443 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.52204 * CGRectGetHeight(group))];
        [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.33059 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.68527 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.57585 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86491 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.42415 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.86491 * CGRectGetHeight(group))];
        [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.31501 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.06764 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.24255 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.51623 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.23735 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.24835 * CGRectGetHeight(group))];
        [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.48745 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02000 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.36552 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.03820 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.42286 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02000 * CGRectGetHeight(group))];
        [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(group) + 0.69270 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.08659 * CGRectGetHeight(group)) controlPoint1: CGPointMake(CGRectGetMinX(group) + 0.56494 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.02000 * CGRectGetHeight(group)) controlPoint2: CGPointMake(CGRectGetMinX(group) + 0.63332 * CGRectGetWidth(group), CGRectGetMinY(group) + 0.04622 * CGRectGetHeight(group))];
        [bezier3Path closePath];
        [[UIColor whiteColor] setStroke];
        bezier3Path.lineWidth = 1;
        [bezier3Path stroke];
        
        
        //// Oval Drawing
        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(group) + floor(CGRectGetWidth(group) * 0.36957) + 0.5, CGRectGetMinY(group) + floor(CGRectGetHeight(group) * 0.12500) + 0.5, floor(CGRectGetWidth(group) * 0.63043) - floor(CGRectGetWidth(group) * 0.36957), floor(CGRectGetHeight(group) * 0.62500) - floor(CGRectGetHeight(group) * 0.12500))];
        [[UIColor whiteColor] setFill];
        [ovalPath fill];
    }
}

@end
