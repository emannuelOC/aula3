//
//  DrawingView.m
//  Miscellanea
//
//  Created by Emannuel Carvalho on 4/30/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "DrawingView.h"

IB_DESIGNABLE
@implementation DrawingView


- (void)drawRect:(CGRect)rect {
    
    CGRect faceRect = CGRectMake(30, 30, 250, 170);
    UIBezierPath *face = [UIBezierPath bezierPathWithRect:faceRect];
    UIBezierPath *eyes = [[UIBezierPath alloc] init];
    [eyes moveToPoint:CGPointMake(80, 80)];
    [eyes addLineToPoint:CGPointMake(130, 80)];
    [eyes moveToPoint:CGPointMake(170, 80)];
    [eyes addLineToPoint:CGPointMake(220, 80)];
    UIBezierPath *mouth = [[UIBezierPath alloc] init];
    [mouth moveToPoint:CGPointMake(80, 150)];
    [mouth addLineToPoint:CGPointMake(220, 150)];
    [mouth addLineToPoint:CGPointMake(220, 135)];

    [[UIColor colorWithRed:0.9 green:0.8 blue:0.7 alpha:1] setFill];
    
    UIBezierPath *curve = [[UIBezierPath alloc] init];
    
    [curve addArcWithCenter:CGPointMake(150, 250) radius:100 startAngle:0.7 endAngle:0.9 * M_PI clockwise:YES];
    
    
    [face fill];
    [face stroke];
    [eyes stroke];
    [mouth stroke];
    
    [curve stroke];
}

@end
