//
//  FWCMasterViewController.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/28/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import "FWCMasterViewController.h"
#import "FWCMolluskVideo.h"
#import "FWCVideoTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "FWCVideoDetailsViewController.h"


@interface FWCMasterViewController ()

@property (nonatomic, strong) NSMutableArray *videos;

@end

@implementation FWCMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Mollusk Videos"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
}

- (void)didBecomeActive:(NSNotification *)notification
{
    [self fetchVideos];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)fetchVideos
{
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
    NSURL *videosURL = [NSURL URLWithString:@"http://vimeo.com/api/v2/mollusksurfshop/videos.json"];
    NSURLSessionDataTask *task = [session dataTaskWithURL:videosURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        if (httpResponse.statusCode == 200) {
            [self parseVideosJSONData:data];
        } else {
            NSLog(@"Error Loading JSON: %@", error);
        }
    }];
    
    [task resume];
}

- (void)parseVideosJSONData:(NSData *)data
{
    NSArray *videosJSON = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //NSLog(@"Video JSON: %@", videosJSON);
    
    self.videos = [NSMutableArray array];
    for (NSDictionary *videoJSON in videosJSON) {
        NSError *error;
        FWCMolluskVideo *video = [MTLJSONAdapter modelOfClass:[FWCMolluskVideo class]
                                           fromJSONDictionary:videoJSON
                                                        error:&error];
        
        if (video) {
            //NSLog(@"Video: %@", video);
            [self.videos addObject:video];
        } else {
            NSLog(@"ERROR: %@", error);
        }
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
        
        for (FWCMolluskVideo *vid in self.videos) {
            [vid loadPlayableVideoURL];
        }
    });
}



#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.videos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //videoCell
    FWCVideoTableViewCell *cell = (FWCVideoTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:@"videoCell"];
    FWCMolluskVideo *video = self.videos[indexPath.row];
    cell.videoTitle.text = video.title;
    cell.videoDate.text = [video uploadedDateToString];
    
    [cell.videoThumb setImageWithURL:video.thumbnailMedium placeholderImage:[UIImage imageNamed:@"icon"]];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FWCVideoDetailsViewController *details = (FWCVideoDetailsViewController *)[segue destinationViewController];
    FWCMolluskVideo *video = self.videos[self.tableView.indexPathForSelectedRow.row];
    [details update:video];
}


@end




















