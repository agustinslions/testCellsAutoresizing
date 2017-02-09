//
//  TeamView.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "ContentView.h"
#import "Team.h"

@interface TeamView : ContentView

@property (nonatomic, assign) Class headerClass;

- (void)loadTeamView:(Team *)team;

@end
