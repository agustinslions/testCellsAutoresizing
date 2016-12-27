//
//  ContentView.m
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import "ContentView.h"
#import "Masonry.h"

@implementation ContentView

- (id)init
{
    self = [super init];
    
    if (self) {
        [self layoutSubviews];
    }
    
    return self;
}

- (void)layoutSubviews
{
    if (!self.sectionHeader) {
        self.sectionHeader = [UIView new];
        
        [self addSubview:self.sectionHeader];

        [self.sectionHeader mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.right.left.equalTo(self.sectionHeader.superview).with.insets(UIEdgeInsetsZero);
        }];
    }
    
    if (!self.sectionMiddle) {
        self.sectionMiddle = [UIView new];
        
        [self addSubview:self.sectionMiddle];

        [self.sectionMiddle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.left.equalTo(self.sectionMiddle.superview).with.insets(UIEdgeInsetsZero);
            make.top.equalTo(self.sectionHeader.mas_bottom).with.insets(UIEdgeInsetsZero);
        }];
    }
    
    if (!self.sectionFooter) {
        self.sectionFooter = [UIView new];
        
        [self addSubview:self.sectionFooter];
        
        [self.sectionFooter mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.left.equalTo(self.sectionFooter.superview).with.insets(UIEdgeInsetsZero);
            make.top.equalTo(self.sectionMiddle.mas_bottom).with.insets(UIEdgeInsetsZero);
            make.bottom.equalTo(self.sectionFooter.superview.mas_bottom).with.insets(UIEdgeInsetsZero);
        }];
    }
    
    [self setNeedsUpdateConstraints];
    [self needsUpdateConstraints];

}

- (void)setupViews
{
    if (self.headerView) {
        [self.sectionHeader addSubview:self.headerView];
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.headerView.superview).with.insets(UIEdgeInsetsZero);
        }];
    }
    
    if (self.centerView) {
        [self.sectionMiddle addSubview:self.centerView];
        
        [self.centerView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.centerView.superview).with.insets(UIEdgeInsetsZero);
        }];
    }
    
    if (self.footerView) {
        [self.sectionFooter addSubview:self.footerView];
        
        [self.footerView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.footerView.superview).with.insets(UIEdgeInsetsZero);
        }];
    }
    
    [self setNeedsUpdateConstraints];
    [self needsUpdateConstraints];
}

@end
