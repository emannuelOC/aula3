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
    // create path
    UIBezierPath *path = [[UIBezierPath alloc] init];
    UIBezierPath *bluePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(250, 250, 100, 100)];
    [bluePath setLineWidth:2];
    
    // add lines, arcs, curves, etc.
    [path moveToPoint:CGPointMake(30, 30)];
    [path addLineToPoint:CGPointMake(130, 130)];
    
    // configure colors
    [[UIColor redColor] setStroke];
    // stroke / fill path
    [path stroke];
    
    [[UIColor blueColor] setStroke];
    [[UIColor lightGrayColor] setFill];
    [bluePath stroke];
    [bluePath fill];
    
    
}

@end
