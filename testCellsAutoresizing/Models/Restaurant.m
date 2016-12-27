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
    
    NSString *auxImg = [Restaurant generateDummyImage:dictionary[@"imageURL"]];
    restaurant.imageURL = [NSURL URLWithString:auxImg];
    
    return restaurant;
}


+ (NSString *) generateDummyImage:(NSString *)imgStr {

    //Generate random hex color
    NSInteger *baseInt = arc4random() % 16777216;
    NSString *hex = [NSString stringWithFormat:@"%06X", baseInt];
    
    return [NSString stringWithFormat:@"https://dummyimage.com/100x100/%@/ffffff.png&text=%@", hex, imgStr];
}

@end
