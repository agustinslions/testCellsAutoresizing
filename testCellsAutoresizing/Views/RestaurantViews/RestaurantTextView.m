//
//  RestaurantTextView.m
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "RestaurantTextView.h"

@implementation RestaurantTextView

- (void)setLabelText:(NSString *)text
{
    if ([text length] == 0) {
        self.topLayoutConstraint.constant = 0;
        self.bottomLayoutConstraint.constant = 0;
    } else {
        self.topLayoutConstraint.constant = 8;
        self.bottomLayoutConstraint.constant = 8;
    }
    
    self.label.text = text;
}


@end
