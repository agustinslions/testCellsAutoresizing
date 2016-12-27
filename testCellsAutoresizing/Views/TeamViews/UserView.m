//
//  UserView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "UserView.h"

@interface UserView ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation UserView

- (void)setUser:(User *)user
{
    self.photoImageView.image = [UIImage imageNamed:user.photo];
    self.nameLabel.text = [user fullName];
}

@end
