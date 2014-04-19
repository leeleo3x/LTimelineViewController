//
//  LLtimelineContentView.m
//  LTimelineViewController
//
//  Created by leo on 4/18/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import "LTimelineViewCellContentView.h"

@interface LTimelineViewCellContentView ()

@property (strong, nonatomic) UIImageView * imageView;
@property (strong, nonatomic) UILabel * textView;

@end

@implementation LTimelineViewCellContentView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}



- (void)createView
{
    if ([_contents[@"type"] isEqualToString:@"text"])
    {
        _textView.text = _contents[@"contents"];
    }
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
