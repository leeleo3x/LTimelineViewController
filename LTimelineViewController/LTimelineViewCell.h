//
//  LTimelineCellView.h
//  LTimelineViewController
//
//  Created by leo on 4/15/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LTimelineCellButton.h"
#import "LLineView.h"
#import "LTimelineViewCellContentView.h"

@protocol LTimelineCellViewDelegate;

@interface LTimelineViewCell : UITableViewCell

@property (strong, nonatomic) UIImageView * avatarImageView;
@property (strong, nonatomic) UILabel * authorLabel;
@property (strong, nonatomic) LLineView * lineView;
@property (strong, nonatomic) LTimelineViewCellContentView * cellContentView;

@property (retain, nonatomic) NSString * type;
@property (retain, nonatomic) NSMutableAttributedString * text;

@property (strong, nonatomic, readonly) LTimelineCellButton * favouriteButton;
@property (strong, nonatomic, readonly) LTimelineCellButton * retweetButton;
@property (strong, nonatomic, readonly) LTimelineCellButton * replyButton;


- (void)createView;

@end

@protocol LTimelineCellViewDelegate <NSObject>

@optional

- (void)swipeTableViewCellDidStartSwiping:(LTimelineViewCell *)cell;
- (void)swipeTableViewCellDidEndSwiping:(LTimelineViewCell *)cell;
- (void)swipeTableViewCell:(LTimelineViewCell *)cell didSwipeWithPercentage:(CGFloat)percentage;


@end