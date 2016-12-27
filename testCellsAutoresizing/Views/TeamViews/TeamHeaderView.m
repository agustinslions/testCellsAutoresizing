//
//  TeamHeaderView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "TeamHeaderView.h"

@interface TeamHeaderView ()

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *categoryLabel;
@property (nonatomic, weak) IBOutlet UIImageView *logoImageView;

@end

@implementation TeamHeaderView

- (void)setTeamHeader:(Team *)team
{
    self.nameLabel.text = team.name;
    self.categoryLabel.text = team.category;
    self.logoImageView.image = [UIImage imageNamed:team.logo];
}

@end
