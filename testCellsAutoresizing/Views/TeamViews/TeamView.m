//
//  TeamView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "TeamView.h"
#import "TeamHeaderView.h"
#import "TeamUsersView.h"
#import "TeamFooterView.h"

@implementation TeamView

- (void)loadTeamView:(Team *)team
{
    /*
        Creation Header
     */
    
    if (!self.headerView) {
        //self.headerView = (TeamHeaderView *)[[NSBundle mainBundle] loadNibNamed:@"TeamHeaderView" owner:nil options:nil][0];
        
        if ([[self.headerClass class] respondsToSelector:@selector(initClassFromNib)]) {
            self.headerView = [self.headerClass initClassFromNib];
        }
    }
    
    [(TeamHeaderView *)self.headerView setTeamHeader:team];
    
    /*
        Creation of Content Body
     */
    
    if (!self.centerView) {
        self.centerView = [TeamUsersView new];
    }
    
    [(TeamUsersView *)self.centerView setupUsersViews:team.users];
        
    /*
        Creation of Footer
     */
    
    if (!self.footerView) {
        self.footerView = (TeamFooterView *)[[NSBundle mainBundle] loadNibNamed:@"TeamFooterView" owner:nil options:nil][0];
    }
    
    [self setupViews];

}

@end
