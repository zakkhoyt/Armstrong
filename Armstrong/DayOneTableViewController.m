//
//  DayOneTableViewController.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "DayOneTableViewController.h"
#import "DayOneTableViewCell.h"

@interface DayOneTableViewController ()

@end

@implementation DayOneTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DayOneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DayOneTableViewCell" forIndexPath:indexPath];
    cell.indexPath = indexPath;
    return cell;
}

@end
