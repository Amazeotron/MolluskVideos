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

@end

@implementation FWCVideoDetailsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.navigationItem setTitle:self.video.title];
    
    self.videoTitleLabel.text = self.video.title;
    self.videoDetailsLabel.text = [NSString stringWithFormat:@"%@", self.video.uploadedDateToString];
    self.videoViewsLabel.text = [NSString stringWithFormat:@"%d", self.video.numPlays];
    self.videoLikesLabel.text = [NSString stringWithFormat:@"%d", self.video.numLikes];
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithData:[self.video.videoDescription dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    self.videoDescription.attributedText = attributedString;
    
    
    [self.videoStill setImageWithURL:self.video.thumbnailLarge];
    
    self.playerController = [[MPMoviePlayerController alloc] initWithContentURL:self.video.playableVideoURL];
    
    CGFloat videoRatio = [[NSNumber numberWithInteger:self.video.width] floatValue] / [[NSNumber numberWithInteger:self.video.height] floatValue];
    CGFloat videoHeight = self.view.frame.size.width / videoRatio;
    CGFloat videoWidth = self.view.frame.size.width;
    
    self.videoView.frame = CGRectMake(self.videoView.frame.origin.x, self.videoView.frame.origin.y, videoWidth, videoHeight);
    self.playerController.view.frame = self.videoView.bounds;
    [self.videoView addSubview:self.playerController.view];
    [self.playerController play];
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
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"prepare for segue...");
}


@end
