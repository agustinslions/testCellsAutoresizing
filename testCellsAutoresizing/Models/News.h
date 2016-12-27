//
//  News.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, NewsType) {
    NewsText = 0,
    NewsImage = 1,
    NewsVideo = 2
};

@interface News : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *newsDescription;
@property (nonatomic, assign) NewsType newsType;
@property (nonatomic, strong) NSString *logo;
@property (nonatomic, strong) NSString *urlNews;

@property (nonatomic, assign) NSInteger likes;
@property (nonatomic, assign) NSInteger views;
@property (nonatomic, assign) NSInteger comments;
@property (nonatomic, assign) NSDate *date;

+ (News *)initWithDictionary:(NSDictionary *)dictionary;

@end
