//
//  RestaurantsViewController.m
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "RestaurantsViewController.h"
#import "Restaurant.h"
#import "RestaurantTableViewCell.h"

@interface RestaurantsViewController ()

@end

static NSString *kRestaurantTableCellIdentifier = @"restaurantTableCellIdentifier";

@implementation RestaurantsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Restaurant Example";
    
    self.objectsArray = [NSArray arrayWithArray:[[ManagerDataController shareInstance] loadRestaurants]];
    
    UINib *nib = [UINib nibWithNibName:@"RestaurantTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:kRestaurantTableCellIdentifier];
}


#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.objectsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RestaurantTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kRestaurantTableCellIdentifier];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:kRestaurantTableCellIdentifier
                                               forIndexPath:indexPath];
    }
    
 
     //Creation of News content
 
    if (!cell.restView) {
        cell.restView = [RestaurantView new];
    }
    
    [cell.restView loadCellWithRestaurant:self.objectsArray[indexPath.row]];
    
    [cell.contentCellView addSubview:cell.restView];
    
    [cell.restView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(cell.restView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    [cell updateConstraintsIfNeeded];
    
    return cell;
}



@end
