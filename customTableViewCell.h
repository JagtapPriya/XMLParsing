//
//  customTableViewCell.h
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/26/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblCountryCode;
@property (weak, nonatomic) IBOutlet UILabel *lblCurrency;
@property (weak, nonatomic) IBOutlet UILabel *lblCurrencyCode;
-(void)loaddata:(NSDictionary *)dictresponce;
@end
