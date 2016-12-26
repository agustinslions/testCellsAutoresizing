//
//  RestaurantView.h
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "ContentView.h"
#import "Restaurant.h"

@interface RestaurantView : ContentView

- (void)loadCellWithRestaurant:(Restaurant *)restaurant;

@end
