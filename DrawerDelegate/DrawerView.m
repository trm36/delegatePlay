//
//  DrawerView.m
//  stretchProblems
//
//  Created by Taylor Mott on 25 Mar 15.
//  Copyright (c) 2015 Taylor Mott. All rights reserved.
//

#import "DrawerView.h"

@implementation DrawerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        self.dismissButton = [UIButton new];
        [self.dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
        [self.dismissButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.dismissButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.dismissButton];
        [self.dismissButton sizeToFit];
        self.dismissButton.center = self.center;
//        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:dismissButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
//        [self addConstraint:constraint];
//        constraint = [NSLayoutConstraint constraintWithItem:dismissButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
//        [self addConstraint:constraint];
//        constraint = [NSLayoutConstraint constraintWithItem:dismissButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0];
//        [self addConstraint:constraint];
    }
    
    return self;
}

-(void)buttonAction
{
    [self.delegate dismissButtonWasTapped];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
