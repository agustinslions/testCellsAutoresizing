//
//  NewsViews.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "ContentView.h"
#import "News.h"

@interface NewsViews : ContentView

- (void)loadCellWithNews:(News *)news;

@end
