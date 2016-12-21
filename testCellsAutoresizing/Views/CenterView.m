//
//  CenterView.m
//  testCellsAutorezising
//
//  Created by Agustin De León on 12/8/16.
//  Copyright © 2016 Agustin De León. All rights reserved.
//

#import "CenterView.h"

@interface CenterView ()

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *topLayoutConstraint;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *bottomLayoutConstraint;

@end

@implementation CenterView

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
