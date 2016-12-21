//
//  TeamUsersView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "TeamUsersView.h"
#import "UserView.h"
#import "Masonry.h"

@implementation TeamUsersView

- (void)setupUsersViews:(NSArray *)users
{
    //Clean all views
    for (UIView *view in self.subviews) {
        [view removeFromSuperview];
    }
        
    UserView *lastView;
    
    for (int i = 0; i < [users count]; i++) {
        UserView *userview = (UserView *)[[NSBundle mainBundle] loadNibNamed:@"UserView" owner:nil options:nil][0];
        
        [self addSubview:userview];
        
        [userview setUser:users[i]];
        
        if (i == 0) {
            
            [userview mas_makeConstraints:^(MASConstraintMaker *make) {
                if (users.count == 1) make.bottom.equalTo(userview.superview).with.insets(UIEdgeInsetsZero);
                make.top.right.left.equalTo(userview.superview).with.insets(UIEdgeInsetsZero);
            }];
            
        } else if (i + 1 != [users count]) {
            
            [userview mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.left.equalTo(userview.superview).with.insets(UIEdgeInsetsZero);
                make.top.equalTo(lastView.mas_bottom).with.insets(UIEdgeInsetsZero);
            }];

        } else {
            
            [userview mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.left.equalTo(userview.superview).with.insets(UIEdgeInsetsZero);
                make.top.equalTo(lastView.mas_bottom).with.insets(UIEdgeInsetsZero);
                make.bottom.equalTo(userview.superview.mas_bottom).with.insets(UIEdgeInsetsZero);
            }];
            
        }
        
        lastView = userview;
        
    }
    
    [self setNeedsUpdateConstraints];
    [self needsUpdateConstraints];

    
}

@end
