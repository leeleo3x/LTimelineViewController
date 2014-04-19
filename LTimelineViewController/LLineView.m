//
//  LLineView.m
//  LTimelineViewController
//
//  Created by leo on 4/18/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import "LLineView.h"

@implementation LLineView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setShowsTopPart:(BOOL)showsTopPart
{
    _showsTopPart = showsTopPart;
    [self setNeedsDisplay];
}

- (void)setText:(NSString *)text
{
    _text = text;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(context, 39, 59);
    CGContextAddLineToPoint(context, 39, 66);
    CGContextSetLineWidth(context, 1.2);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextStrokePath(context);
    
    CGContextAddEllipseInRect(context, CGRectMake(29, 68, 20, 20));
    CGContextSetLineWidth(context, 1.2);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, 39, 91);
    CGContextAddLineToPoint(context, 39, 205);
    CGContextSetLineWidth(context, 1.2);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextStrokePath(context);
    
    if (_showsTopPart) {
        CGContextMoveToPoint(context, 39, 2);
        CGContextAddLineToPoint(context, 39, 20);
        CGContextSetLineWidth(context, 1.2);
        CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
        CGContextStrokePath(context);
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
