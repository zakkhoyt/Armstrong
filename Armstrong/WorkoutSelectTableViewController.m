//
//  DaysTableViewController.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "WorkoutSelectTableViewController.h"

@interface WorkoutSelectTableViewController ()

@end

@implementation WorkoutSelectTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Select Workout";
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
