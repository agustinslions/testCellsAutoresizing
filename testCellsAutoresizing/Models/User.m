//
//  User.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "User.h"

@implementation User

+ (User *)initWithDictionary:(NSDictionary *)dictionary
{
    User *user = [User new];
    
    user.name = dictionary[@"name"];
    user.lastName = dictionary[@"lastName"];
    user.photo = dictionary[@"photo"];

    return user;
}

- (NSString *)fullName
{
    NSString *fullName = @"";
    
    if (self.name && [self.name length] > 0) {
        fullName = self.name;
    }
    
    if (self.lastName && [self.lastName length] > 0) {
        
        if ([fullName length] > 0) {
            [fullName stringByAppendingString:[NSString stringWithFormat:@" %@", self.lastName]];
        } else {
            fullName = self.lastName;
        }
    }
    
    return fullName;
}

@end
