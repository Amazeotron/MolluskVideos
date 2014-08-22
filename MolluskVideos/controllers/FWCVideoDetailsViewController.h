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
#import "FWCPlayButton.h"
#import "FWCViewsIcon.h"


@interface FWCVideoDetailsViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *videoTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *videoDetailsLabel;
@property (strong, nonatomic) IBOutlet UILabel *videoViewsLabel;
@property (strong, nonatomic) IBOutlet UILabel *videoLikesLabel;
@property (strong, nonatomic) IBOutlet UIImageView *videoStill;
@property (strong, nonatomic) IBOutlet UIView *videoView;
@property (strong, nonatomic) IBOutlet UITextView *videoDescription;
@property (strong, nonatomic) IBOutlet FWCPlayButton *playButton;

@property (nonatomic, strong) FWCMolluskVideo *video;

@property (nonatomic, strong) MPMoviePlayerController *playerController;
@property (strong, nonatomic) IBOutlet FWCViewsIcon *viewsIcon;

- (void)update:(FWCMolluskVideo *)video;

@end
