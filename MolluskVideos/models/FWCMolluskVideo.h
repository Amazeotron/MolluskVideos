//
//  FWCMolluskVideo.h
//  MolluskVideos
//
//  Created by Larry Lague on 4/28/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"
#import "YTVimeoExtractor.h"


@interface FWCMolluskVideo : MTLModel <MTLJSONSerializing, YTVimeoExtractorDelegate>

@property (nonatomic, assign) NSInteger videoID;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *videoDescription;
@property (nonatomic, copy) NSURL *videoURL;
@property (nonatomic, copy) NSDate *uploadDate;
@property (nonatomic, copy) NSURL *mobileURL;
@property (nonatomic, copy) NSURL *thumbnailSmall;
@property (nonatomic, copy) NSURL *thumbnailMedium;
@property (nonatomic, copy) NSURL *thumbnailLarge;
@property (nonatomic, assign) NSInteger userID;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *userURL;
@property (nonatomic, copy) NSString *userPortraitSmall;
@property (nonatomic, copy) NSString *userPortraitMedium;
@property (nonatomic, copy) NSString *userPortraitLarge;
@property (nonatomic, copy) NSString *userPortraitHuge;
@property (nonatomic, assign) NSInteger numLikes;
@property (nonatomic, assign) NSInteger numPlays;
@property (nonatomic, assign) NSInteger numComments;
@property (nonatomic, assign) NSInteger duration;
@property (nonatomic, assign) NSInteger width;
@property (nonatomic, assign) NSInteger height;
@property (nonatomic, copy) NSArray *tags;
@property (nonatomic, copy) NSString *privacy;
@property (nonatomic, copy) NSURL *playableVideoURL;

+(NSDictionary *)JSONKeyPathsByPropertyKey;

- (void)loadPlayableVideoURL;
- (NSString *)uploadedDateToString;
- (NSString *)playbackTimeAsString;

@end
