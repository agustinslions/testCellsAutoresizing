//
//  NewsVideosView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "NewsVideosView.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface NewsVideosView ()

@property (nonatomic, weak) IBOutlet UIImageView *videoPhotoImageView;

@end

@implementation NewsVideosView

- (void)setVideoPhoto:(News *)news
{
    self.videoPhotoImageView.image = [NewsVideosView thumbnailFromVideoAtURL:[NSURL fileURLWithPath:news.urlNews]];
}

+ (UIImage *)thumbnailFromVideoAtURL:(NSURL *)contentURL
{
    UIImage *theImage = nil;
    AVURLAsset *asset = [[AVURLAsset alloc] initWithURL:contentURL options:nil];
    AVAssetImageGenerator *generato = [[AVAssetImageGenerator alloc] initWithAsset:asset];
    generato.appliesPreferredTrackTransform = YES;
    NSError *error = NULL;
    CMTime time = CMTimeMake(1, 60);
    CGImageRef imgRef = [generato copyCGImageAtTime:time actualTime:NULL error:&error];
    
    theImage = [[UIImage alloc] initWithCGImage:imgRef];
    
    return theImage;
}

@end
