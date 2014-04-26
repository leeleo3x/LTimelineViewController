//
//  LTimelineTableViewController.m
//  LTimelineViewController
//
//  Created by leo on 4/16/14.
//  Copyright (c) 2014 leo. All rights reserved.
//

#import "LTimelineTableViewController.h"
#import "LTimelineViewCell.h"

@interface LTimelineTableViewController () <LTimelineCellViewDelegate>

@property (strong, nonatomic) NSMutableArray * objects;

@end

@implementation LTimelineTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)loadView
{
    [super loadView];
    
    CGRect bounds = self.view.bounds;
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bounds.size.width, bounds.size.width)];
    [backgroundView setBackgroundColor:[UIColor grayColor]];
    [self.tableView setBackgroundView:backgroundView];
    
    [self.tableView registerClass:[LTimelineViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _objects = [NSMutableArray arrayWithCapacity:6];
    NSMutableDictionary
    * tmp = @{@"avatarImageView":@"image",
              @"authorLabel":@"leeleo3x",
              @"ifFavorite":@NO,
              @"content":
                  @{@"type":@"text",
                    @"text": @"《打造最佳开发团队的几点建议》1.你需要构建的是一个团队而非一群人。2.不要害怕修改团队的组织架构。和运动一样，队员间的化学反应非常重要！3.致力于自己关心的工作通常也能带来更高的工作效率。3.没有任何人愿意做的事，应该让所有人都轮流去做。"}}.mutableCopy;
    [_objects addObject:tmp];
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO}.mutableCopy;
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO,
            @"content":
                @{@"type":@"text",
                  @"text": @"《打造最佳开发团队的几点建议》1.你需要构建的是一个团队而非一群人。2.不要害怕修改团队的组织架构。和运动一样，队员间的化学反应非常重要！3.致力于自己关心的工作通常也能带来更高的工作效率。3.没有任何人愿意做的事，应该让所有人都轮流去做。"}}.mutableCopy;
    [_objects addObject:tmp];
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO}.mutableCopy;
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO,
            @"content":
                @{@"type":@"text",
                  @"text": @"《打造最佳开发团队的几点建议》1.你需要构建的是一个团队而非一群人。2.不要害怕修改团队的组织架构。和运动一样，队员间的化学反应非常重要！3.致力于自己关心的工作通常也能带来更高的工作效率。3.没有任何人愿意做的事，应该让所有人都轮流去做。"}}.mutableCopy;
    [_objects addObject:tmp];
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO}.mutableCopy;
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"leeleo3x",
            @"ifFavorite":@NO,
            @"content":
                @{@"type":@"text",
                  @"text": @"《打造最佳开发团队的几点建议》1.你需要构建的是一个团队而非一群人。2.不要害怕修改团队的组织架构。和运动一样，队员间的化学反应非常重要！3.致力于自己关心的工作通常也能带来更高的工作效率。3.没有任何人愿意做的事，应该让所有人都轮流去做。"}}.mutableCopy;
    [_objects addObject:tmp];
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO}.mutableCopy;
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"leeleo3x",
            @"ifFavorite":@NO,
            @"content":
                @{@"type":@"text",
                  @"text": @"《打造最佳开发团队的几点建议》1.你需要构建的是一个团队而非一群人。2.不要害怕修改团队的组织架构。和运动一样，队员间的化学反应非常重要！3.致力于自己关心的工作通常也能带来更高的工作效率。3.没有任何人愿意做的事，应该让所有人都轮流去做。"}}.mutableCopy;
    [_objects addObject:tmp];
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"richard1122",
            @"ifFavorite":@NO}.mutableCopy;
    tmp = @{@"avatarImageView":@"image",
            @"authorLabel":@"leeleo3x",
            @"ifFavorite":@NO,
            @"content":
                @{@"type":@"text",
                  @"text": @"《打造最佳开发团队的几点建议》1.你需要构建的是一个团队而非一群人。2.不要害怕修改团队的组织架构。和运动一样，队员间的化学反应非常重要！3.致力于自己关心的工作通常也能带来更高的工作效率。3.没有任何人愿意做的事，应该让所有人都轮流去做。"}}.mutableCopy;
    [_objects addObject:tmp];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect contentSize;
    
    NSAttributedString * s = [[NSAttributedString alloc] initWithString:_objects[indexPath.row][@"content"][@"text"] attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:15], NSForegroundColorAttributeName: [UIColor grayColor]}];
    
    contentSize = [s boundingRectWithSize:CGSizeMake(223, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    
    return 117 + contentSize.size.height;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _objects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    LTimelineViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //    if (! cell)
    //  {
    //    cell = [[LTimelineViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        cell.separatorInset = UIEdgeInsetsZero;
        [cell setSelectionStyle:UITableViewCellSelectionStyleDefault];
    }
    //}
    
    [self setCell:cell forRowAtIndexOfPath:indexPath];
    return cell;
}

- (void)setCell:(LTimelineViewCell *)cell forRowAtIndexOfPath:(NSIndexPath *)indexPath
{
    //[cell createView];
    if (indexPath.row != 0) {
        cell.lineView.showsTopPart = YES;
    } else {
        cell.lineView.showsTopPart = NO;
    }
    
    cell.authorLabel.text = _objects[indexPath.row][@"authorLabel"];
    cell.avatarImageView.image = [UIImage imageNamed:@"image.jpeg"];
    _objects[indexPath.row][@"type"] = _objects[indexPath.row][@"content"][@"type"];
    _objects[indexPath.row][@"text"] = [[NSMutableAttributedString alloc]
                                        initWithString:_objects[indexPath.row][@"content"][@"text"]
                                        attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:15], NSForegroundColorAttributeName: [UIColor grayColor]}];
    
    cell.type = _objects[indexPath.row][@"type"];
    cell.text = _objects[indexPath.row][@"text"];
    
    if ([_objects[indexPath.row][@"ifFavorite"] boolValue] == YES) {
        cell.favouriteButton.selected = YES;
    } else {
        cell.favouriteButton.selected = NO;
    }
    
    [cell.favouriteButton addTarget:self action:@selector(favouriteButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [cell.replyButton addTarget:self action:@selector(replyButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [cell.retweetButton addTarget:self action:@selector(retweetButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Do something when the cell was selected
}

#pragma mark - LTimelineCellView delegate
- (void)swipeTableViewCellDidStartSwiping:(LTimelineViewCell *)cell
{
    
}

- (void)swipeTableViewCellDidEndSwiping:(LTimelineViewCell *)cell
{
    
}

- (void)swipeTableViewCell:(LTimelineViewCell *)cell didSwipeWithPercentage:(CGFloat)percentage
{
    
}

#pragma mark - LTimelineCellButton delegate

- (void)favouriteButtonAction:(LTimelineCellButton *)sender
{
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];
    
    sender.selected = !sender.selected;
    [_objects[indexPath.row] setObject:@(sender.selected) forKey:@"ifFavorite"];
    NSLog(@"%@", _objects[indexPath.row][@"ifFavorite"]);
    if (indexPath != nil) {
        LTimelineViewCell * cell = (LTimelineViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        NSLog(@"啊呀，被摸了！%@",cell);
    }
}

- (void)replyButtonAction:(LTimelineCellButton *)sender
{
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];
    
    if (indexPath != nil) {
        LTimelineViewCell * cell = (LTimelineViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        NSLog(@"啊呀，被摸了！%@",cell);
    }
}

- (void)retweetButtonAction:(LTimelineCellButton *)sender
{
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];
    
    if (indexPath != nil) {
        LTimelineViewCell * cell = (LTimelineViewCell *) [self.tableView cellForRowAtIndexPath:indexPath];
        NSLog(@"啊呀，被摸了！%@",cell);
    }
    
}

@end
