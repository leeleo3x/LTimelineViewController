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
        [self createView];
    }
    return self;
}



- (void)createView
{
    self.autoresizesSubviews = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    //NSLog(@"View created");
    _imageView = [[UIImageView alloc] init];
    [self addSubview:_imageView];
    
    _textView = [[UILabel alloc] init];
    [self addSubview:_textView];
}

- (void)layoutSubviews
{
    if ([_type isEqualToString:@"text"]) {
        _textView.attributedText = _text;
        [_textView setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        _textView.textAlignment = NSTextAlignmentLeft;
        _textView.lineBreakMode = NSLineBreakByWordWrapping;
        _textView.numberOfLines = 0;
        
        NSLog(@"%f", _textView.frame.size.height);
        //NSLog(@"%f", self.frame.size.height);
    }
    else if ([_type isEqualToString:@"image"]) {
        
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
