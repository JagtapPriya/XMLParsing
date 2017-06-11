//
//  ViewController.m
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/26/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import "ViewController.h"
#import "customTableViewCell.h"
#import "DetailViewController.h"

@interface ViewController (){
    NSDictionary *dictionry;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self xmlParse];
    _search.delegate=self;
    _xmltbl.myxmldelegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)xmlParse{
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *strPath=[bundle pathForResource:@"Books" ofType:@"xml"];
    NSURL *url=[NSURL fileURLWithPath:strPath];
    NSXMLParser *xml=[[NSXMLParser alloc]initWithContentsOfURL:url];
    xml.delegate=self;
    [xml parse];
    if (arr.count) {
       
        [_xmltbl reloadxmldata:arr];
    }

   
}


-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{
    
    if ([elementName isEqualToString:@"NewDataSet"]) {
        arr=[[NSMutableArray alloc]init];
    }else if([elementName isEqualToString:@"Table"]) {
        dict=[[NSMutableDictionary alloc]init];
    }
    
    
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if (str==nil) {
        str=[[NSMutableString alloc]init];
        str=[string mutableCopy];
    }else{
        NSString *temp=[NSString stringWithFormat:@"%@%@",str,string];
        temp=[temp stringByReplacingOccurrencesOfString:@"/n" withString:@""];
        str=[temp mutableCopy];
        
    }
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if ([elementName isEqualToString:@"Table"]) {
        [arr addObject:dict];
    }else{
        [dict setObject:str forKey:elementName];
    }
    str=nil;
}



-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [_search resignFirstResponder];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"Name contains[c] '%@'",_search.text]];
    NSArray *arrTemp=[arr filteredArrayUsingPredicate:predicate];
    arr=[arrTemp mutableCopy];
    [_xmltbl reloadxmldata:arr];
    
    
}
//xmltableview method delegate (optional)
-(void)didselectxmltableview:(NSDictionary *)dictres{
    dictionry = [dictres copy];
     [self performSegueWithIdentifier:@"segue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"segue"]) {
        DetailViewController *obj=[segue destinationViewController];
        obj.strName=[dictionry valueForKey:@"Name"];
        obj.strCountryCode=[dictionry valueForKey:@"CountryCode"];
        obj.strCurrency=[dictionry valueForKey:@"Currency"];
        obj.strCurrencyCode=[dictionry valueForKey:@"CurrencyCode"];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
