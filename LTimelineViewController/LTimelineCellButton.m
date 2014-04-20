//
//  LTimelineCellButton.m
//  LTimelineViewController
//
//  Created by leo on 4/17/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import "LTimelineCellButton.h"

@implementation LTimelineCellButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel.font = [UIFont fontWithName:@"FontAwesome" size:12];
        self.titleLabel.textAlignment = NSTextAlignmentLeft;
        [self setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
        [self setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    }
    return self;
}

- (void)setIcon:(NSString *)icon
{
    _icon = icon;
    NSString *s = [NSString stringWithFormat:@"%@ %@",_icon,_count];
    [self setTitle:s forState:UIControlStateNormal];
}

- (void)setCount:(NSString *)count
{
    _count = count;
    NSString *s = [NSString stringWithFormat:@"%@ %@",_icon,_count];
    [self setTitle:s forState:UIControlStateNormal];
}

- (void)drawRect:(CGRect)rect
{
    if (CGRectIsEmpty(rect)) {
        return;
    }
    if (_showButton) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextAddEllipseInRect(context, CGRectMake(rect.size.width - 3, rect.size.height / 2 - 1, 2, 2));
        CGContextSetLineWidth(context, 2);
        CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
        CGContextStrokePath(context);
    }
    
}

@end
