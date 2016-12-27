//
//  RestaurantHeaderView.h
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface RestaurantHeaderView : UIView

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

- (void)setRestaurant:(Restaurant *)restaurant;

@end
