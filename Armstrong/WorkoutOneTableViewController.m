//
//  DayOneTableViewController.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "WorkoutOneTableViewController.h"
#import "WorkoutOneTableViewCell.h"
#import "PushupTableViewCell.h"

@interface WorkoutOneTableViewController ()

@end

@implementation WorkoutOneTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Day 1";
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
            return 5;
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
            WorkoutOneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DayOneTableViewCell" forIndexPath:indexPath];
            cell.indexPath = indexPath;
            return cell;
        }
            break;

        default:
            return nil;
            break;
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
