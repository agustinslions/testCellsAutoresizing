//
//  NewsHeaderView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "NewsHeaderView.h"

@interface NewsHeaderView ()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end

@implementation NewsHeaderView

- (void)setNews:(News *)news
{
    self.titleLabel.text = news.title;
    self.imageView.image = [UIImage imageNamed:news.logo];
}

@end
