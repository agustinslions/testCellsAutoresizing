//
//  TableViewCell.m
//  testCellsAutorezising
//
//  Created by Agustin De León on 11/15/16.
//  Copyright © 2016 Agustin De León. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"

#import "CenterView.h"
#import "HeaderView.h"
#import "FooterView.h"

@interface TableViewCell ()

@property (weak, nonatomic) IBOutlet UIView *sectionHeader;
@property (weak, nonatomic) IBOutlet UIView *sectionMiddle;
@property (weak, nonatomic) IBOutlet UIView *sectionFooter;

@property (strong, nonatomic) HeaderView *headerView;
@property (strong, nonatomic) CenterView *centerView;
@property (strong, nonatomic) FooterView *footerView;

@end

@implementation TableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTitleHeader:(NSString *)titleHeader withCenterText:(NSString *)centerText
{
    /*
        Creation of Header
     */
    if (!self.headerView) {
        self.headerView = (HeaderView *)[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:nil options:nil][0];
    }
    
    self.headerView.titleLabel.text = titleHeader;
    
    [self.sectionHeader addSubview:self.headerView];
    
    [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.headerView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    /*
        Creation of CenterView
     */
    if (!self.centerView) {
        self.centerView = (CenterView *)[[NSBundle mainBundle] loadNibNamed:@"CenterView" owner:nil options:nil][0];
    }
    self.centerView.label.text = centerText;
    
    [self.sectionMiddle addSubview:self.centerView];
    
    [self.centerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.centerView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    /*
        Creation of FooterView
     */
    if (!self.footerView) {
        self.footerView = (FooterView *)[[NSBundle mainBundle] loadNibNamed:@"FooterView" owner:nil options:nil][0];
    }
    
    [self.sectionFooter addSubview:self.footerView];
    
    [self.footerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.footerView.superview).with.insets(UIEdgeInsetsZero);
    }];

    [self setNeedsUpdateConstraints];
    [self needsUpdateConstraints];
}

@end
