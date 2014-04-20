//
//  LTimelineCellVeiw.m
//  LTimelineViewController
//
//  Created by leo on 4/15/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import "LTimelineViewCell.h"

@implementation LTimelineViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;
}

- (void)createView
{
    
    self.contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    _authorLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_authorLabel];
    
    _favouriteButton = [[LTimelineCellButton alloc] init];
    _favouriteButton.icon = @"";
    _favouriteButton.count = @"100";
    _favouriteButton.showButton = YES;
    [self.contentView addSubview:_favouriteButton];
    
    _replyButton = [[LTimelineCellButton alloc] init];
    _replyButton.icon = @"";
    _replyButton.count = @"100";
    _replyButton.showButton = YES;
    [self.contentView addSubview:_replyButton];
    
    _retweetButton = [[LTimelineCellButton alloc] init];
    _retweetButton.icon = @"";
    _retweetButton.count = @"100";
    _retweetButton.showButton = NO;
    [self.contentView addSubview:_retweetButton];
    
    _lineView = [[LLineView alloc] init];
    [self.contentView addSubview:_lineView];
    
    _avatarImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_avatarImageView];
    
    _cellContentView = [[LTimelineViewCellContentView alloc] init];
    [self.contentView addSubview:_cellContentView];
    
    //[self setNeedsLayout];
    
}

//- (void)setContent:(NSDictionary *)content
//{
//    _content = content;
//}

- (void)layoutSubviews
{
    CGRect bounds = self.bounds;
    
    //[self.contentView setFrame:CGRectMake(0, 0, bounds.size.width, 208)];
    
    _favouriteButton.frame = CGRectMake(70, bounds.size.height - 20, 60, 20);
    _replyButton.frame = CGRectMake(70 + 40 + 20, bounds.size.height - 20, 60, 20);
    _retweetButton.frame = CGRectMake(70 + 80 + 40, bounds.size.height - 20, 60, 20);
    
    [_lineView setFrame:CGRectMake(0, 0, 60, 208)];
    [_lineView setBackgroundColor:[UIColor clearColor]];
    
    [_avatarImageView setFrame:CGRectMake(0, 0, 36, 36)];
    [_avatarImageView setCenter:CGPointMake(40, 40)];
    _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.cornerRadius = 5.0;
    
    [_authorLabel setFrame:CGRectMake(0, 0, 230, 36)];
    [_authorLabel setCenter:CGPointMake(185, 40)];
    _authorLabel.textColor = [UIColor grayColor];
    _authorLabel.font = [UIFont boldSystemFontOfSize:25.0];
    
    if ([_type isEqualToString:@"text"]) {
        CGRect contentSize;
        
        contentSize = [_text boundingRectWithSize:CGSizeMake(223, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
        [_cellContentView setFrame:CGRectMake(70, 68, contentSize.size.width, contentSize.size.height)];
        _cellContentView.type = _type;
        _cellContentView.text = _text;
        
        [_lineView setLineHeight: _cellContentView.frame.size.height + 22];
        [_lineView setFrame:CGRectMake(0, 0, 60, 92 + _lineView.lineHeight)];
        NSLog(@"%f",_cellContentView.frame.size.width);
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
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
