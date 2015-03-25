//
//  ViewController.m
//  DrawerDelegate
//
//  Created by Taylor Mott on 25 Mar 15.
//  Copyright (c) 2015 Mott Applications. All rights reserved.
//

#import "ViewController.h"
#import "DrawerView.h"

@interface ViewController () <DrawerViewDelegate>

@property (strong, nonatomic) DrawerView *drawerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *presentButton = [UIButton new];
    [presentButton setTitle:@"Present Drawer" forState:UIControlStateNormal];
    [presentButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [presentButton addTarget:self action:@selector(presentDrawer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
    [presentButton sizeToFit];
    presentButton.center = self.view.center;
    
    self.drawerView = [[DrawerView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    self.drawerView.delegate = self;
    self.drawerView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.drawerView];
}

-(void)presentDrawer
{
    [UIView animateWithDuration:1.0 animations:^{
        self.drawerView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        self.drawerView.dismissButton.center = self.drawerView.center;
    }];
}

-(void)dismissButtonWasTapped
{
    [UIView animateWithDuration:1.0 animations:^{
        self.drawerView.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
        self.drawerView.dismissButton.center = self.drawerView.center;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
