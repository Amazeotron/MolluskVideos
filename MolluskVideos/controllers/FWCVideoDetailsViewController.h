//
//  FWCVideoDetailsViewController.h
//  MolluskVideos
//
//  Created by Larry Lague on 4/28/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "FWCMolluskVideo.h"


@interface FWCVideoDetailsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *videoTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *videoDetailsLabel;
@property (strong, nonatomic) IBOutlet UILabel *videoViewsLabel;
@property (strong, nonatomic) IBOutlet UILabel *videoLikesLabel;
@property (strong, nonatomic) IBOutlet UIImageView *videoStill;
@property (strong, nonatomic) IBOutlet UIView *videoView;
@property (strong, nonatomic) IBOutlet UITextView *videoDescription;

@property (nonatomic, strong) FWCMolluskVideo *video;

@property (nonatomic, strong) MPMoviePlayerController *playerController;

- (void)update:(FWCMolluskVideo *)video;

@end
