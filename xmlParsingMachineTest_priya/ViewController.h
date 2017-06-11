//
//  ViewController.h
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/26/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMLTableview.h"
@interface ViewController : UIViewController<NSXMLParserDelegate,UISearchBarDelegate,mytbldelegate>{
    NSMutableArray *arr;
    NSMutableDictionary *dict;
    NSMutableString *str;
}
@property (weak, nonatomic) IBOutlet UISearchBar *search;

@property (weak, nonatomic) IBOutlet XMLTableview *xmltbl;

@end

