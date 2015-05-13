//
//  ChartViewController.h
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Armstrong-Swift.h"
@import Charts;

@interface ChartViewController : UIViewController
@property (nonatomic, strong) NSArray *months;
@property (nonatomic, strong) NSArray *parties;

@property (nonatomic, strong) IBOutlet UIButton *optionsButton;
@property (nonatomic, strong) IBOutlet NSArray *options;

@end
