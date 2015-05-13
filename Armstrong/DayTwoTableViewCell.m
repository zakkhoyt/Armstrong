//
//  DayTwoTableViewCell.m
//  Armstrong
//
//  Created by Zakk Hoyt on 5/12/15.
//  Copyright (c) 2015 Zakk Hoyt. All rights reserved.
//

#import "DayTwoTableViewCell.h"

@interface DayTwoTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end

@implementation DayTwoTableViewCell

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    if(indexPath.item == 0){
        self.titleLabel.text = [NSString stringWithFormat:@"Pyramid - %lu rep", (unsigned long) indexPath.item + 1];
    } else {
        self.titleLabel.text = [NSString stringWithFormat:@"Pyramid - %lu reps", (unsigned long) indexPath.item + 1];
    }
}




@end
