//
//  customTableViewCell.m
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/26/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import "customTableViewCell.h"

@implementation customTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)loaddata:(NSDictionary *)dictresponce{
    _lblName.text=[NSString stringWithFormat:@"%@",[dictresponce valueForKey:@"Name"]];
    _lblCountryCode.text=[NSString stringWithFormat:@"%@",[dictresponce valueForKey:@"CountryCode"]];
    _lblCurrency.text=[NSString stringWithFormat:@"%@",[dictresponce valueForKey:@"Currency"]];
    _lblCurrencyCode.text=[NSString stringWithFormat:@"%@",[dictresponce valueForKey:@"CurrencyCode"]];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
