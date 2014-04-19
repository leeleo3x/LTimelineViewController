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

//- (void)drawRect:(CGRect)rect
//{
//    if (CGRectIsEmpty(rect)) {
//        return;
//    }
//    CGPoint iconPosition = CGPointMake((rect.size.width * 0.375 - _icon.size.width)/2, (rect.size.height - _icon.size.height)/2);
//    CGRect titleRect = CGRectMake(rect.size.width * 0.375, 0, rect.size.width * 0.625, rect.size.height);
//    [_icon drawAtPoint:iconPosition];
//    [_count drawInRect:titleRect withFont:[UIFont systemFontOfSize:16] lineBreakMode:NSLineBreakByTruncatingTail alignment:NSTextAlignmentCenter];
//    
//    UIColor *color = self.highlighted | self.selected ? [UIColor colorWithRed:0.0f/255.0f green:126.0f/255.0f blue:246.0f/255.0f alpha:1] : [UIColor colorWithRed:204.0f/255.0f green:204.0f/255.0f blue:204.0f/255.0f alpha:1];
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetFillColorWithColor(context, color.CGColor);
//    CGContextSetBlendMode(context, kCGBlendModeSourceIn);
//    CGContextFillRect(context, rect);
//}

@end
