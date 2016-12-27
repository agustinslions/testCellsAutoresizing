//
//  NewsViews.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "NewsViews.h"

#import "NewsHeaderView.h"
#import "NewsFooterView.h"

#import "NewsTextView.h"
#import "NewsVideosView.h"
#import "NewsImagesView.h"

@implementation NewsViews

- (void)loadCellWithNews:(News *)news
{
    /*
        Creation of Header
     */

    if (!self.headerView) {
        self.headerView = (NewsHeaderView *)[[NSBundle mainBundle] loadNibNamed:@"NewsHeaderView" owner:nil options:nil][0];
    }

    [(NewsHeaderView *)self.headerView setNews:news];

    /*
        Creation of Content Body
     */
        
    if (news.newsType == NewsText) {
        
        if (!self.centerView || ![self.centerView isKindOfClass:[NewsTextView class]]) {
            
            [self cleanCenterView];
            
            self.centerView = (NewsTextView *)[[NSBundle mainBundle] loadNibNamed:@"NewsTextView" owner:nil options:nil][0];
        }
    
        [(NewsTextView *)self.centerView setLabelText:news.newsDescription];

    } else if (news.newsType == NewsImage) {
        
        if (!self.centerView || ![self.centerView isKindOfClass:[NewsImagesView class]]) {
            
            [self cleanCenterView];
            
            self.centerView = (NewsImagesView *)[[NSBundle mainBundle] loadNibNamed:@"NewsImagesView" owner:nil options:nil][0];
        }
        
        [(NewsImagesView *)self.centerView setImageView:news.urlNews];
        
    } else if (news.newsType == NewsVideo) {
        
        if (!self.centerView || ![self.centerView isKindOfClass:[NewsVideosView class]]) {
            
            [self cleanCenterView];
            
            self.centerView = (NewsVideosView *)[[NSBundle mainBundle] loadNibNamed:@"NewsVideosView" owner:nil options:nil][0];
        }

        [(NewsVideosView *)self.centerView setVideoPhoto:news];

    }
    
    /*
        Creation of Footer
     */

    if (!self.footerView) {
        self.footerView = (NewsFooterView *)[[NSBundle mainBundle] loadNibNamed:@"NewsFooterView" owner:nil options:nil][0];
    }

    [(NewsFooterView *)self.footerView setNews:news];

    [self setupViews];
}

- (void)cleanCenterView
{
    if (self.centerView) {
        [self.centerView removeFromSuperview];
        self.centerView = nil;
    }
}
@end
