//
//  RestaurantHeaderView.m
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "RestaurantHeaderView.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation RestaurantHeaderView

- (void)setRestaurant:(Restaurant *)restaurant
{
    self.titleLabel.text = restaurant.name;
    [self.imageView sd_setImageWithURL:restaurant.imageURL];
    //self.imageView.image = [UIImage imageNamed:@"barcelona"];
}

@end
