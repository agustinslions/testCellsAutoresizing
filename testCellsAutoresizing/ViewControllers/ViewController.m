//
//  ViewController.m
//  testCellsAutorezising
//
//  Created by Agustin De León on 11/15/16.
//  Copyright © 2016 Agustin De León. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) NSArray *textHeader;

@end

static NSString *kExampleIdentifier = @"tableViewIdentifier";

@implementation ViewController

#pragma mark - Lifecycle methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Simple Example";

    /*
        Header Text
     */
    self.textHeader = @[@"La pasiva",
                        @"La pasiva, creo q bien",
                        @"La pasiva... mira como anda",
                        @"La pasiva",
                        @"La pasiva, creo q bien",
                        @"La pasiva... mira como anda"];

    /*
        Center text
     */
    self.array = @[@"testing with a big title, maybe two lines. We can set any text and any size",
                   @"testing one line",
                   @"testing some text with a greate text. bla bla bla bla bla bla bla bla... is a great text :) :)",
                   @"testing one line",
                   @"testing one line",
                   @"testing"];
    
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100; // set to whatever your "average" cell height is
    
    UINib *nib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:kExampleIdentifier];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kExampleIdentifier];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    }

    [cell setTitleHeader:self.textHeader[indexPath.row] withCenterText:self.array[indexPath.row]];
    
    [cell updateConstraintsIfNeeded];
    
    return cell;
}


@end
