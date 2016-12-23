//
//  GenericASDKTableViewController.h
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/23/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "Masonry.h"
#import "ManagerDataController.h"

@interface GenericASDKTableViewController : UIViewController

@property (strong, nonatomic)  ASTableNode *tableNode;

@property (nonatomic, strong) NSArray *objectsArray;

@end
