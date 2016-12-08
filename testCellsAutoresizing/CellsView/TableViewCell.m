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
    HeaderView *header = (HeaderView *)[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:nil options:nil][0];
    header.titleLabel.text = centerText;
    
    [self.sectionHeader addSubview:header];
    
    [header mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(header.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    /*
        Creation of CenterView
     */
    CenterView *newView = (CenterView *)[[NSBundle mainBundle] loadNibNamed:@"CenterView" owner:nil options:nil][0];
    
    newView.label.text = centerText;
    
    [self.sectionMiddle addSubview:newView];
    
    [newView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(newView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    /*
        Creation of FooterView
     */
    FooterView *footerView = (FooterView *)[[NSBundle mainBundle] loadNibNamed:@"FooterView" owner:nil options:nil][0];
    
    [self.sectionFooter addSubview:footerView];
    
    [footerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(footerView.superview).with.insets(UIEdgeInsetsZero);
    }];

    [self setNeedsUpdateConstraints];
    [self needsUpdateConstraints];
}

@end
