//
//  User.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *photo;

+ (User *)initWithDictionary:(NSDictionary *)dictionary;

- (NSString *)fullName;

@end
