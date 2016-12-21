//
//  News.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "News.h"

@implementation News

+ (News *)initWithDictionary:(NSDictionary *)dictionary
{
    News *news = [News new];
    
    news.title = dictionary[@"title"];
    news.newsDescription = dictionary[@"description"];
    news.logo = dictionary[@"logo"];
    news.urlNews = dictionary[@"urlNews"];
    news.date = dictionary[@"date"];

    news.newsType = [dictionary[@"typeNews"] integerValue];
    
    news.likes = [dictionary[@"likes"] integerValue];
    news.views = [dictionary[@"views"] integerValue];
    news.comments = [dictionary[@"comments"] integerValue];
    
    return news;
}

@end
