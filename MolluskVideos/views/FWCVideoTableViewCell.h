//
//  FWCVideoTableViewCell.h
//  MolluskVideos
//
//  Created by Larry Lague on 4/28/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FWCVideoTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *videoThumb;
@property (strong, nonatomic) IBOutlet UILabel *videoTitle;
@property (strong, nonatomic) IBOutlet UILabel *videoDate;
@property (strong, nonatomic) IBOutlet UILabel *likesLabel;
@property (strong, nonatomic) IBOutlet UIImageView *viewsIcon;


@end
