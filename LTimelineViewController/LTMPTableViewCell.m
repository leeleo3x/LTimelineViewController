//
//  LTMPTableViewCell.m
//  LTimelineViewController
//
//  Created by leo on 4/15/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import "LTMPTableViewCell.h"

@implementation LTMPTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
