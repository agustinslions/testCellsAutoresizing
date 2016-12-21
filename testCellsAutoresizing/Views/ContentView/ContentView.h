//
//  ContentView.h
//  testCellsAutoresizing
//
//  Created by Agustin De Leon on 11/12/16.
//  Copyright © 2016 Agustin De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentView : UIView

@property (strong, nonatomic) UIView *sectionHeader;
@property (strong, nonatomic) UIView *sectionMiddle;
@property (strong, nonatomic) UIView *sectionFooter;

@property (strong, nonatomic) UIView *headerView;
@property (strong, nonatomic) UIView *centerView;
@property (strong, nonatomic) UIView *footerView;

- (void)setupViews;

@end
