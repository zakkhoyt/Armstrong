//
//  DayTwoTableViewController.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "WorkoutTwoTableViewController.h"
#import "WorkoutTwoTableViewCell.h"
#import "PushupTableViewCell.h"
@interface WorkoutTwoTableViewController ()

@end

@implementation WorkoutTwoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Day 2";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 3;
            break;
        case 1:
            return 1000;
            break;
            
        default:
            return 0;
            break;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:{
            PushupTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PushupTableViewCell" forIndexPath:indexPath];
            cell.indexPath = indexPath;
            return cell;
        }
            break;
        case 1:{
            WorkoutTwoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DayTwoTableViewCell" forIndexPath:indexPath];

            cell.indexPath = indexPath;
            return cell;
        }
            break;
            
        default:
            return nil;
            break;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        
    } else if(indexPath.section == 1){
        WorkoutTwoTableViewCell *cell = (WorkoutTwoTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        
    } else if(indexPath.section == 1){
        WorkoutTwoTableViewCell *cell = (WorkoutTwoTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Push-ups";
            break;
        case 1:
            return @"Pull-ups";
            break;
            
        default:
            return 0;
            break;
    }
}

@end
