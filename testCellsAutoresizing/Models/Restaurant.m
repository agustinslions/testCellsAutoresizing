//
//  Restaurant.m
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

+ (Restaurant *)initWithDictionary:(NSDictionary *)dictionary
{
    Restaurant *restaurant = [Restaurant new];
    
    restaurant.name = dictionary[@"name"];
    restaurant.restaurantDescription = dictionary[@"restaurantDescription"];
    restaurant.imageURL = dictionary[@"imageURL"];
    
    return restaurant;
}

@end
