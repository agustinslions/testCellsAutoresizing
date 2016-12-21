//
//  NewsTextView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "NewsTextView.h"

@interface NewsTextView ()

@property (nonatomic, weak) IBOutlet UILabel *label;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *topLayoutConstraint;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *bottomLayoutConstraint;


@end

@implementation NewsTextView

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
