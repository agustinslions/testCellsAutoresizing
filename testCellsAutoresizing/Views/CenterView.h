//
//  CenterView.h
//  testCellsAutorezising
//
//  Created by Agustin De León on 12/8/16.
//  Copyright © 2016 Agustin De León. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CenterView : UIView

@property (nonatomic, weak) IBOutlet UILabel *label;

- (void)setLabelText:(NSString *)text;

@end
