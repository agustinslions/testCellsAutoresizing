//
//  Team.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Team : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *logo;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, assign) BOOL isFavorite;

@property (nonatomic, strong) NSArray *users;

+ (Team *)initWithDictionary:(NSDictionary *)dictionary;

@end
