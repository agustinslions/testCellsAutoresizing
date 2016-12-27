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
    NSURL *urlString = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:news.urlNews ofType:@"mp4"]];

    [NewsVideosView thumbnailImageForVideoURL:urlString completionHandler:^(UIImage *thumbImage) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.videoPhotoImageView.image = thumbImage;
            //self.objectDetail.videoThumbImage = UIImageJPEGRepresentation(thumbImage, 1.0);
        });
        
    }];
}

+(void)thumbnailImageForVideoURL:(NSURL *)videoURL completionHandler:(void (^)(UIImage *))completionHandler{
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        
        AVURLAsset *asset=[[AVURLAsset alloc] initWithURL:videoURL options:nil];
        AVAssetImageGenerator *generator = [[AVAssetImageGenerator alloc] initWithAsset:asset];
        generator.appliesPreferredTrackTransform=TRUE;
        
        CMTime thumbTime = CMTimeMakeWithSeconds(30,30);
        
        AVAssetImageGeneratorCompletionHandler handler = ^(CMTime requestedTime, CGImageRef im, CMTime actualTime, AVAssetImageGeneratorResult result, NSError *error){
            
            if (result != AVAssetImageGeneratorSucceeded) {
                NSLog(@"couldn't generate thumbnail, error:%@", error);
            }
            
            UIImage *image;
            if(im){
                image = [UIImage imageWithCGImage:im];
                
            }else{
                image = [UIImage imageNamed:@"videoPlaceholder"];
            }
            completionHandler(image);
        };
        
        CGSize maxSize = CGSizeMake(568, 426);
        generator.maximumSize = maxSize;
        [generator generateCGImagesAsynchronouslyForTimes:[NSArray arrayWithObject:[NSValue valueWithCMTime:thumbTime]] completionHandler:handler];
    });
}

@end
