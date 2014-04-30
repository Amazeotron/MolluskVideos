//
//  FWCVideoDetailsViewController.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/28/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import "FWCVideoDetailsViewController.h"
#import "UIImageView+WebCache.h"

@interface FWCVideoDetailsViewController ()

@property (nonatomic, assign) BOOL shouldStopPlayer;

@end

@implementation FWCVideoDetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.shouldStopPlayer = YES;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didRotate:) name:UIDeviceOrientationDidChangeNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didEnterFullscreen:) name:MPMoviePlayerDidEnterFullscreenNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didExitFullscreen:) name:MPMoviePlayerDidExitFullscreenNotification object:nil];
    
    [self.navigationItem setTitle:self.video.title];
    
    self.videoTitleLabel.text = self.video.title;
    self.videoDetailsLabel.text = [NSString stringWithFormat:@"%@", self.video.uploadedDateToString];
    self.videoViewsLabel.text = [NSString stringWithFormat:@"%d", self.video.numPlays];
    self.videoLikesLabel.text = [NSString stringWithFormat:@"%d", self.video.numLikes];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithData:[self.video.videoDescription dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    self.videoDescription.attributedText = attributedString;
    
    
    [self.videoStill setImageWithURL:self.video.thumbnailLarge];
    
    self.playerController = [[MPMoviePlayerController alloc] initWithContentURL:self.video.playableVideoURL];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didChangePlaybackState:) name:MPMoviePlayerPlaybackStateDidChangeNotification object:nil];
    
    [self updateVideoFrame];
    [self.videoView addSubview:self.playerController.view];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapPlay:)];
    [self.playButton addGestureRecognizer:tap];
}

- (void)didTapPlay:(UITapGestureRecognizer *)recognizer
{
    [self.playerController play];
}

- (void)didEnterFullscreen:(NSNotification *)notification
{
    NSLog(@"Enter fullscreen");
    self.shouldStopPlayer = NO;
}

- (void)didExitFullscreen:(NSNotification *)notification
{
    NSLog(@"exit fullscreen");
    [self.playerController play];
}

- (void)didChangePlaybackState:(NSNotification *)notification
{
    switch (self.playerController.playbackState) {
        case MPMoviePlaybackStatePaused:
        case MPMoviePlaybackStateStopped:
            self.playButton.hidden = NO;
            break;
            
            case MPMoviePlaybackStatePlaying:
            self.playButton.hidden = YES;
            
        default:
            break;
    }
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)update:(FWCMolluskVideo *)video
{
    self.video = video;
    [self.video loadPlayableVideoURL];
}

- (void)updateVideoFrame
{
    CGFloat videoRatio = [[NSNumber numberWithInteger:self.video.width] floatValue] / [[NSNumber numberWithInteger:self.video.height] floatValue];
    CGFloat videoHeight = self.view.frame.size.width / videoRatio;
    CGFloat videoWidth = self.view.frame.size.width;
    
    self.videoView.frame = CGRectMake(self.videoView.frame.origin.x, self.videoView.frame.origin.y, videoWidth, videoHeight);
    self.playerController.view.frame = self.videoView.bounds;
}


#pragma mark - NSNotification

- (void)didRotate:(NSNotification *)notification
{
    [self updateVideoFrame];
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"prepare for segue...");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"will disappear");
    [super viewWillDisappear:animated];
    
    if (!self.playerController.fullscreen) {
        [self.playerController stop];
    }
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"did disappear");
    [super viewDidDisappear:animated];
}


@end













