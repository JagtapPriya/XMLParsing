//
//  XMLTableview.h
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/27/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol mytbldelegate<NSObject>
@optional
-(void)didselectxmltableview:(NSDictionary *)dictres;
@end
@interface XMLTableview : UITableView<UITableViewDelegate,UITableViewDataSource>
-(void)reloadxmldata:(NSArray *)array;
@property id<mytbldelegate>myxmldelegate;
@end
