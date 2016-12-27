//
//  Team.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "Team.h"
#import "User.h"

@implementation Team

+ (Team *)initWithDictionary:(NSDictionary *)dictionary
{
    Team *team = [Team new];
    
    team.name = dictionary[@"name"];
    team.logo = dictionary[@"logo"];
    team.category = dictionary[@"category"];
    team.isFavorite = [dictionary[@"isFavorite"] boolValue];

    NSMutableArray *users = [NSMutableArray array];
    
    if (dictionary[@"users"] && [dictionary[@"users"] count] > 0) {
        
        NSArray *usersArray = dictionary[@"users"];
        
        for (NSDictionary *userDictionary in usersArray) {
            [users addObject:[User initWithDictionary:userDictionary]];
        }
        
        team.users = users;
        
    } else {
        
        team.users = [NSArray array];
        
    }
    
    return team;
}

@end
