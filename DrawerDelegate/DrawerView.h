//
//  DrawerView.h
//  stretchProblems
//
//  Created by Taylor Mott on 25 Mar 15.
//  Copyright (c) 2015 Taylor Mott. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DrawerViewDelegate <NSObject>

@required
-(void)dismissButtonWasTapped;

@end

@interface DrawerView : UIView

@property (strong, nonatomic) UIButton *dismissButton;
@property (strong, nonatomic) id<DrawerViewDelegate> delegate;

@end
