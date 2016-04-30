//
//  AnimationsViewController.m
//  Miscellanea
//
//  Created by Emannuel Carvalho on 4/30/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "AnimationsViewController.h"

@interface AnimationsViewController ()

@end

@implementation AnimationsViewController

- (IBAction)animate:(UIButton *)sender {
    // cor
    [self animateColorForView:sender];
    
    // tamanho
    
    // posição
    
    // rotação
    
    // ...
}

- (void)animateColorForView:(UIView *)animatingView {
    UIColor *newColor;
    if ([animatingView.backgroundColor isEqual:[UIColor redColor]]) {
        newColor = [UIColor colorWithRed:0.5 green:0.5 blue:1 alpha:1];
    } else {
        newColor = [UIColor redColor];
    }
    [UIView animateWithDuration:0.5 animations:^{
        animatingView.backgroundColor = newColor;
    }];
}


@end
