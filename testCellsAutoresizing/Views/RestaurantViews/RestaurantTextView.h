//
//  RestaurantTextView.h
//  testCellsAutoresizing
//
//  Created by Mauro Taroco on 12/26/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantTextView : UIView

@property (nonatomic, weak) IBOutlet UILabel *label;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *topLayoutConstraint;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *bottomLayoutConstraint;

- (void)setLabelText:(NSString *)text;

@end
