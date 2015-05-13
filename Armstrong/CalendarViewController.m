//
//  CalendarViewController.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "CalendarViewController.h"
#import "RSDayFlow.h"

static NSString *SegueCalendarToWorkouts = @"SegueCalendarToWorkouts";


@interface CalendarViewController () <RSDFDatePickerViewDelegate, RSDFDatePickerViewDataSource>
@property (weak, nonatomic) IBOutlet RSDFDatePickerView *datePicker;
@end

@implementation CalendarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.datePicker.delegate = self;
    self.datePicker.dataSource = self;
//    self.datePicker.allowsMultipleSelection = YES;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    [self.datePicker selectDate:[NSDate date]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void) pickerCollectionViewWillLayoutSubviews:(RSDFDatePickerCollectionView *)pickerCollectionView{
    
}

- (BOOL)datePickerView:(RSDFDatePickerView *)view shouldMarkDate:(NSDate *)date{
    return YES;
}

- (BOOL)datePickerView:(RSDFDatePickerView *)view isCompletedAllTasksOnDate:(NSDate *)date{
    return YES;
}

- (void)datePickerView:(RSDFDatePickerView *)view didSelectDate:(NSDate *)date{
    // TODO: Add gesutre recognizers to collectionViewCell. Add blocks for each gesture. Extend those actions to this delegate
    int i = 0;
    
//    [self performSegueWithIdentifier:SegueCalendarToWorkouts sender:nil];
}

- (BOOL)datePickerView:(RSDFDatePickerView *)view shouldSelectDate:(NSDate *)date{
    return YES;
}


@end
