//
//  GenericTableViewController.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "ManagerDataController.h"

@interface GenericTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *objectsArray;

@end
