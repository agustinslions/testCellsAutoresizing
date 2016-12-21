//
//  NewsTableViewCell.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "TableViewCell.h"
#import "NewsViews.h"

@interface NewsTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIView *contentCellView;

@property (nonatomic, strong) NewsViews *newsView;

@end
