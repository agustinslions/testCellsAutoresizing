//
//  ManagerDataController.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ManagerDataController : NSObject

+ (ManagerDataController *)shareInstance;

- (NSMutableArray *)loadNews;

- (NSMutableArray *)loadNewsDynamic;

- (NSMutableArray *)loadTeams;

@end
