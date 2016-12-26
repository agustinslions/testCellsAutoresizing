//
//  RestaurantView.m
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "RestaurantView.h"
#import "RestaurantHeaderView.h"
#import "RestaurantTextView.h"
#import "RestaurantFooterView.h"

@implementation RestaurantView

- (void)loadCellWithRestaurant:(Restaurant *)restaurant
{
    /*
     Creation of Header
     */
    
    if (!self.headerView) {
        self.headerView = (RestaurantHeaderView *)[[NSBundle mainBundle] loadNibNamed:@"RestaurantHeaderView" owner:nil options:nil][0];
    }
    
    [(RestaurantHeaderView *)self.headerView setRestaurant:restaurant];
    
    /*
     Creation of Content Body
     */
    
    //if (Restaurant.RestaurantType == RestaurantText) {
        
        if (!self.centerView || ![self.centerView isKindOfClass:[RestaurantTextView class]]) {
            
            [self cleanCenterView];
            
            self.centerView = (RestaurantTextView *)[[NSBundle mainBundle] loadNibNamed:@"RestaurantTextView" owner:nil options:nil][0];
        }
        
        [(RestaurantTextView *)self.centerView setLabelText:restaurant.restaurantDescription];
        
//    } else if (Restaurant.RestaurantType == RestaurantImage) {
//        
//        if (!self.centerView || ![self.centerView isKindOfClass:[RestaurantImagesView class]]) {
//            
//            [self cleanCenterView];
//            
//            self.centerView = (RestaurantImagesView *)[[NSBundle mainBundle] loadNibNamed:@"RestaurantImagesView" owner:nil options:nil][0];
//        }
//        
//        [(RestaurantImagesView *)self.centerView setImageView:Restaurant.urlRestaurant];
//        
//    } else if (Restaurant.RestaurantType == RestaurantVideo) {
//        
//        if (!self.centerView || ![self.centerView isKindOfClass:[RestaurantVideosView class]]) {
//            
//            [self cleanCenterView];
//            
//            self.centerView = (RestaurantVideosView *)[[NSBundle mainBundle] loadNibNamed:@"RestaurantVideosView" owner:nil options:nil][0];
//        }
//        
//        [(RestaurantVideosView *)self.centerView setVideoPhoto:Restaurant];
//        
//    }
    
    /*
     Creation of Footer
     */
    
    if (!self.footerView) {
        self.footerView = (RestaurantFooterView *)[[NSBundle mainBundle] loadNibNamed:@"RestaurantFooterView" owner:nil options:nil][0];
    }
    
    [(RestaurantFooterView *)self.footerView setRestaurant:restaurant];
    
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
