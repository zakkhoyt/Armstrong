//
//  DayOneTableViewCell.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "DayOneTableViewCell.h"

@interface DayOneTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *repsLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (nonatomic) NSUInteger reps;
@end

@implementation DayOneTableViewCell

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    self.titleLabel.text = [NSString stringWithFormat:@"Max Effort Pull-ups - Set %lu", (unsigned long)self.indexPath.row + 1];
    self.repsLabel.text = @"";

}

- (IBAction)stepperValueChanged:(UIStepper*)sender {
    self.repsLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)sender.value];
}

@end
