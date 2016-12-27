//
//  TeamTableViewCell.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 12/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeamView.h"

@interface TeamTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIView *contentCellView;

@property (nonatomic, strong) TeamView *teamView;

@end
