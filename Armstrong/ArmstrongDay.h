//
//  ArmstrongDay.h
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArmstrongDayWorkoutOne.h"

typedef enum {
    ArmstrongDayIndexOne = 0,
    ArmstrongDayIndexTwo,
    ArmstrongDayIndexThree,
    ArmstrongDayIndexFour,
    ArmstrongDayIndexFive,
} ArmstrongDayIndex;

@interface ArmstrongDay : NSObject

@property (nonatomic, strong) NSDate *date;
@property (nonatomic) ArmstrongDayIndex index;
@property (nonatomic, strong) NSArray *workouts;
@end
