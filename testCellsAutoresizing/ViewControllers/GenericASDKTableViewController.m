//
//  GenericASDKTableViewController.m
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/23/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "GenericASDKTableViewController.h"

@interface GenericASDKTableViewController ()

@end

@interface GenericASDKTableViewController (DataSource)<ASTableDataSource>
@end

@interface GenericASDKTableViewController (Delegate)<ASTableDelegate>
@end



@implementation GenericASDKTableViewController

#pragma mark - Lifecycle

- (instancetype)initTableNode {
    _tableNode = [[ASTableNode alloc] initWithStyle:UITableViewStylePlain];
    
    if (!(self = [super init])) { return nil; }
    [self wireDelegation];
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableNode.view.leadingScreensForBatching = 1.0;  // overriding default of 2.0
    
    [self.view addSubnode:self.tableNode];
    [self applyStyle];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.tableNode.frame = self.view.bounds;
}

#pragma mark - Delegation

- (void)wireDelegation {
    self.tableNode.dataSource = self;
    self.tableNode.delegate = self;
}

#pragma mark - Appearance

- (void)applyStyle {
    self.view.backgroundColor = [UIColor blackColor];
    self.tableNode.view.separatorStyle = UITableViewCellSeparatorStyleNone;
}


@end

@implementation GenericASDKTableViewController (DataSource)


- (NSInteger)tableNode:(ASTableNode *)tableNode numberOfRowsInSection:(NSInteger)section {
    return self.objectsArray.count;
}

/*
//1
- (ASCellNodeBlock)tableNode:(ASTableNode *)tableNode nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath {
    //2
    RainforestCardInfo *animal = self.objectsArray[indexPath.row];
    
    //3
    return ^{
        //4
        CardNode *cardNode = [[CardNode alloc] initWithAnimal:animal];
        //5
        //You'll add something extra here later...
        cardNode.debugName = [NSString stringWithFormat:@"cell %ld", (long)indexPath.row];
        
        return cardNode;
    };
}

*/

@end
