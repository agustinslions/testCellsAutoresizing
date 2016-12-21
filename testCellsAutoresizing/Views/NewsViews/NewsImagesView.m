//
//  NewsImagesView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "NewsImagesView.h"
#import "Masonry.h"

@interface NewsImagesView ()

@property (nonatomic, weak) IBOutlet UIImageView *photoView;

@end

@implementation NewsImagesView

- (void)setImageView:(NSString *)path
{
    self.photoView.image = [UIImage imageNamed:path];
}


@end
