//
//  ManagerDataController.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "ManagerDataController.h"
#import "Team.h"
#import "News.h"
#import "Restaurant.h"

@interface ManagerDataController ()

@property (nonatomic, strong) NSMutableArray *newsArray;
@property (nonatomic, strong) NSMutableArray *newsDynamicArray;
@property (nonatomic, strong) NSMutableArray *teamsArray;
@property (nonatomic, strong) NSMutableArray *restaurantsArray;

@end

@implementation ManagerDataController

+ (ManagerDataController *)shareInstance
{
    static ManagerDataController *instance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [ManagerDataController new];
    });
    
    return instance;
}

- (NSMutableArray *)loadNews
{
    if (!self.newsArray) {
        self.newsArray = [NSMutableArray array];
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"news" ofType:@"plist"];
        NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];

        for (NSDictionary *dictionary in array) {
            News *news = [News initWithDictionary:dictionary];
            [self.newsArray addObject:news];
        }

    }
    
    return self.newsArray;
}

- (NSMutableArray *)loadNewsDynamic
{
    if (!self.newsDynamicArray) {
        self.newsDynamicArray = [NSMutableArray array];
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"newsDynamic" ofType:@"plist"];
        NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];

        for (NSDictionary *dictionary in array) {
            News *news = [News initWithDictionary:dictionary];
            [self.newsDynamicArray addObject:news];
        }

    }
    
    return self.newsDynamicArray;
}

- (NSMutableArray *)loadTeams
{
    if (!self.teamsArray) {
        self.teamsArray = [NSMutableArray array];
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"teams" ofType:@"plist"];
        NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
        
        for (NSDictionary *dictionary in array) {
            Team *team = [Team initWithDictionary:dictionary];
            [self.teamsArray addObject:team];
        }
        
    }
    
    return self.teamsArray;
}

- (NSMutableArray *)loadRestaurants
{
    if (!self.restaurantsArray) {
        self.restaurantsArray = [NSMutableArray array];
        
        NSString *path = [[NSBundle mainBundle]pathForResource:@"restaurants" ofType:@"plist"];
        NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
        
        for (NSDictionary *dictionary in array) {
            Restaurant *restaurant = [Restaurant initWithDictionary:dictionary];
            [self.restaurantsArray addObject:restaurant];
        }
        
    }
    
    return self.restaurantsArray;
}

@end
