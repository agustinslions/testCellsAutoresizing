//
//  TeamsViewController.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 10/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "TeamsViewController.h"
#import "TeamView.h"
#import "TeamTableViewCell.h"
#import "TeamHeaderView.h"

@interface TeamsViewController ()

@end

static NSString *kTeamTableCellIdentifier = @"teamTableCellIdentifier";

@implementation TeamsViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Team Example";

    self.objectsArray = [NSArray arrayWithArray:[[ManagerDataController shareInstance] loadTeams]];
    
    UINib *nib = [UINib nibWithNibName:@"TeamTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:kTeamTableCellIdentifier];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.objectsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TeamTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTeamTableCellIdentifier];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:kTeamTableCellIdentifier
                                               forIndexPath:indexPath];
    }
    
    /*
     Creation of News content
     */
    if (!cell.teamView) {
        cell.teamView = [TeamView new];
    }
    
    cell.teamView.headerClass = [TeamHeaderView class];
    [cell.teamView loadTeamView:self.objectsArray[indexPath.row]];
    
    [cell.contentCellView addSubview:cell.teamView];
    
    [cell.teamView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(cell.teamView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    [cell updateConstraintsIfNeeded];
    
    return cell;
}

@end
