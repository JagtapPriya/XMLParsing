//
//  DetailViewController.h
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/26/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property(strong,nonatomic)NSString *strName;
@property(strong,nonatomic)NSString *strCountryCode;
@property(strong,nonatomic)NSString *strCurrency;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *countryCode;
@property (weak, nonatomic) IBOutlet UILabel *currency;
@property (weak, nonatomic) IBOutlet UILabel *currencyCode;
@property(strong,nonatomic)NSString *strCurrencyCode;
@end
