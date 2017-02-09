//
//  MultipleContentView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 9/2/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "MultipleContentView.h"
#import "Masonry.h"

@implementation MultipleContentView

- (void)setUpViews:(NSMutableArray *)views
{
    //Clean all views
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
    
    UIView *lastView;
    
    for (int i = 0; i < [views count]; i++) {
        UIView *subview = (UIView *)views[i];
        
        [self addSubview:subview];
        
        if (i == 0) {
            
            [subview mas_makeConstraints:^(MASConstraintMaker *make) {
                if (views.count == 1) make.bottom.equalTo(subview.superview).with.insets(UIEdgeInsetsZero);
                make.top.right.left.equalTo(subview.superview).with.insets(UIEdgeInsetsZero);
            }];
            
        } else if (i + 1 != [views count]) {
            
            [subview mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.left.equalTo(subview.superview).with.insets(UIEdgeInsetsZero);
                make.top.equalTo(lastView.mas_bottom).with.insets(UIEdgeInsetsZero);
            }];
            
        } else {
            
            [subview mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.left.equalTo(subview.superview).with.insets(UIEdgeInsetsZero);
                make.top.equalTo(lastView.mas_bottom).with.insets(UIEdgeInsetsZero);
                make.bottom.equalTo(subview.superview.mas_bottom).with.insets(UIEdgeInsetsZero);
            }];
            
        }
        
        lastView = subview;
        
    }
    
    [self setNeedsUpdateConstraints];
    [self needsUpdateConstraints];

}

@end
