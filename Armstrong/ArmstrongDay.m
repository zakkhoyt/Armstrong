//
//  ArmstrongDay.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "ArmstrongDay.h"

@implementation ArmstrongDay
- (instancetype)initWithDate:(NSDate*)date{
    self = [super init];
    if (self) {
        self.date = date;
        self.workouts = @[[NSNull null],
                          [NSNull null],
                          [NSNull null],
                          [NSNull null],
                          [NSNull null]];
    }
    return self;
}
@end
