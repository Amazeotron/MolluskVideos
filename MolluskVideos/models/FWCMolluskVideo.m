//
//  FWCMolluskVideo.m
//  MolluskVideos
//
//  Created by Larry Lague on 4/28/14.
//  Copyright (c) 2014 Friendly Weekday Crowd. All rights reserved.
//

#import "FWCMolluskVideo.h"


@implementation FWCMolluskVideo

+(NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"videoID": @"id",
             @"title": @"title",
             @"videoDescription": @"description",
             @"videoURL": @"url",
             @"uploadDate": @"upload_date",
             @"mobileURL": @"mobile_url",
             @"thumbnailSmall": @"thumbnail_small",
             @"thumbnailMedium": @"thumbnail_medium",
             @"thumbnailLarge": @"thumbnail_large",
             @"userID": @"user_id",
             @"userName": @"user_name",
             @"userURL": @"user_url",
             @"userPortraitSmall": @"user_portrait_small",
             @"userPortraitMedium": @"user_portrait_medium",
             @"userPortraitLarge": @"user_portrait_large",
             @"userPortraitHuge": @"user_portrait_huge",
             @"numLikes": @"stats_number_of_likes",
             @"numPlays": @"stats_number_of_plays",
             @"numComments": @"stats_number_of_comments",
             @"duration": @"duration",
             @"width": @"width",
             @"height": @"height",
             @"tags": @"tags",
             @"privacy": @"embed_privacy"
             };
}

+ (NSValueTransformer *)uploadDateJSONTransformer
{
    return [MTLValueTransformer transformerWithBlock:^id(NSString *dateString) {
        return [[self dateFormatter] dateFromString:dateString];
    }];
}

+ (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *__dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __dateFormatter = [[NSDateFormatter alloc] init];
        __dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
        __dateFormatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    });
    
    return __dateFormatter;
}

- (void)loadPlayableVideoURL
{
    //NSString *vidId = [NSString stringWithFormat:@"%i", self.videoID];
    NSString *vidURL = [NSString stringWithFormat:@"%@", self.videoURL];
    
    YTVimeoExtractor *extractor = [[YTVimeoExtractor alloc] initWithURL:vidURL quality:YTVimeoVideoQualityMedium];
    extractor.delegate = self;
    [extractor start];
}

- (NSString *)uploadedDateToString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    return [dateFormatter stringFromDate:self.uploadDate];
}

- (NSString *)playbackTimeAsString
{
    NSInteger mins = self.duration % 60;
    NSInteger secs = self.duration / 60 % 60;
    return [NSString stringWithFormat:@"%dm, %ds", mins, secs];
}



#pragma mark - YTVimeoExtractor delegates

-(void)vimeoExtractor:(YTVimeoExtractor *)extractor didSuccessfullyExtractVimeoURL:(NSURL *)videoURL withQuality:(YTVimeoVideoQuality)quality
{
    self.playableVideoURL = videoURL;
}

-(void)vimeoExtractor:(YTVimeoExtractor *)extractor failedExtractingVimeoURLWithError:(NSError *)error
{
    NSLog(@"FAIL");
}

@end


















