//
//  RestaurantTableViewCell.h
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestaurantView.h"

@interface RestaurantTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIView *contentCellView;

@property (nonatomic, strong) RestaurantView *restView;

@end
