//
//  Restaurant.h
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurant : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *restaurantDescription;
@property (strong, nonatomic) NSURL *imageURL;

+ (Restaurant *)initWithDictionary:(NSDictionary *)dictionary;

@end
