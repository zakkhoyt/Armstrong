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
@property (strong, nonatomic) IBOutlet UIBarButtonItem *graphButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *selectButton;
@end

@implementation CalendarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.datePicker.delegate = self;
    self.datePicker.dataSource = self;
    self.datePicker.allowsMultipleSelection = YES;
    
    [self.navigationItem setLeftBarButtonItem:self.selectButton animated:NO];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = NO;
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

- (IBAction)graphButtonAction:(id)sender {
    
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    ac.popoverPresentationController.barButtonItem = sender;
    
    [ac addAction:[UIAlertAction actionWithTitle:@"View all" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];
    
    [ac addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
    }]];
    
    [self presentViewController:ac animated:YES completion:NULL];
}

- (IBAction)selectButtonAction:(id)sender {
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"What would you like to select?" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    ac.popoverPresentationController.barButtonItem = sender;
    

    [ac addAction:[UIAlertAction actionWithTitle:@"None" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"All Workouts" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Workout Type 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Workout Type 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Workout Type 3" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Workout Type 4" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    [ac addAction:[UIAlertAction actionWithTitle:@"Workout Type 5" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];

    
    [ac addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
    }]];
    
    [self presentViewController:ac animated:YES completion:NULL];
    
}

- (void) pickerCollectionViewWillLayoutSubviews:(RSDFDatePickerCollectionView *)pickerCollectionView{
    
}

- (BOOL)datePickerView:(RSDFDatePickerView *)view shouldMarkDate:(NSDate *)date{
    return YES;
}

- (BOOL)datePickerView:(RSDFDatePickerView *)view isCompletedAllTasksOnDate:(NSDate *)date{
    return YES;
}

- (BOOL)datePickerView:(RSDFDatePickerView *)view shouldSelectDate:(NSDate *)date{
    return YES;
}








- (void)datePickerView:(RSDFDatePickerView *)view didSelectDate:(NSDate *)date{
    // TODO: Add gesutre recognizers to collectionViewCell. Add blocks for each gesture. Extend those actions to this delegate
    int i = 0;
    [self.navigationItem setRightBarButtonItem:self.graphButton animated:YES];
    
//
}

- (void)datePickerView:(RSDFDatePickerView *)view didSingleTapDate:(NSDate *)date{
    
}
- (void)datePickerView:(RSDFDatePickerView *)view didDoubleTapDate:(NSDate *)date{
    
}
- (void)datePickerView:(RSDFDatePickerView *)view didLongPressDate:(NSDate *)date{
    [self performSegueWithIdentifier:SegueCalendarToWorkouts sender:nil];
}





@end
