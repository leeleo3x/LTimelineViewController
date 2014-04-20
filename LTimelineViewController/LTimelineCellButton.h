//
//  LTimelineCellButton.h
//  LTimelineViewController
//
//  Created by leo on 4/17/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSMutableAttributedString+FontAwesomeIcon.h"

@interface LTimelineCellButton : UIButton

@property (retain, nonatomic) NSString * count;
@property (retain, nonatomic) NSString * icon;
@property (assign, nonatomic) BOOL showButton;

@end
