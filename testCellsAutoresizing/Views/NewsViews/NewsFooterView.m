//
//  NewsFooterView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "NewsFooterView.h"

@interface NewsFooterView ()

@property (nonatomic, weak) IBOutlet UILabel *likeslabel;
@property (nonatomic, weak) IBOutlet UILabel *likesCountlabel;

@property (nonatomic, weak) IBOutlet UILabel *commentslabel;
@property (nonatomic, weak) IBOutlet UILabel *commentsCountlabel;

@property (nonatomic, weak) IBOutlet UILabel *viewslabel;
@property (nonatomic, weak) IBOutlet UILabel *viewsCountlabel;

@end

@implementation NewsFooterView

- (void)setNews:(News *)news
{
    self.likeslabel.text = @"Likes";
    self.likesCountlabel.text = [NSString stringWithFormat:@"%i", (int)news.likes];
    
    self.commentslabel.text = @"Comments";
    self.commentsCountlabel.text = [NSString stringWithFormat:@"%i", (int)news.comments];
    
    self.viewslabel.text = @"Views";
    self.viewsCountlabel.text = [NSString stringWithFormat:@"%i", (int)news.views];
}

@end
