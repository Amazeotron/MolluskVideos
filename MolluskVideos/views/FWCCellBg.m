//
//  FWCCellBg.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/30/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import "FWCCellBg.h"

@interface FWCCellBg ()

@property (nonatomic, strong) UIColor *green;

@end

@implementation FWCCellBg

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.green = [UIColor colorWithRed: 0.478 green: 0.8 blue: 0.784 alpha: 1];
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    //// bg Drawing
    UIBezierPath* bgPath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(rect), CGRectGetMinY(rect), rect.size.width, rect.size.height)];
    [self.green setFill];
    [bgPath fill];
    
    //// bottom Drawing
    UIBezierPath* bottomPath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(rect), CGRectGetMaxY(rect) - 5, rect.size.width, 5)];
    [[UIColor whiteColor] setFill];
    [bottomPath fill];
}

@end
