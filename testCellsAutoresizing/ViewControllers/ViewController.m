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

static NSString *MyIdentifier = @"tableViewIdentifier";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.array = @[@"testing fafikoasdf adsiofaosdfoads faiosfjoadsnfn n oafuoadsu foadsuoifgudf guodfsguodfsugoudfsogudsgu odfsugodfsuoguodfsugodfsu oudfsgouds ougiodf",@"testing",@"testing"];
    self.textHeader = @[@"La pasiva",@"La pasiva con nombre mas largo para ver como queda, creo q bien", @"La pasiva... mira como anda"];

    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100; // set to whatever your "average" cell height is
    
    UINib *nib = [UINib nibWithNibName:@"TableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:MyIdentifier];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (!cell) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    }

    [cell updateConstraintsIfNeeded];

    [cell setTitleHeader:self.textHeader[indexPath.row] withCenterText:self.array[indexPath.row]];
    
    return cell;
}


@end
