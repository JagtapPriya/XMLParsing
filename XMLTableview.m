//
//  XMLTableview.m
//  xmlParsingMachineTest_priya
//
//  Created by Felix ITs 09 on 5/27/17.
//  Copyright © 2017 Felix Its. All rights reserved.
//

#import "XMLTableview.h"
#import "customTableViewCell.h"

@implementation XMLTableview{
    NSArray *arr;
}

-(void)reloadxmldata:(NSArray *)array{
    self.delegate = self;
    self.dataSource = self;
    arr = [array copy];
    [self reloadData];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  arr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    customTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell=[[customTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell loaddata:[arr objectAtIndex:indexPath.row]];
    
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [_myxmldelegate didselectxmltableview:[arr objectAtIndex:indexPath.row]];
   // index=indexPath;
   
}
-(void)didselectxmltableview:(NSDictionary *)dictres{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
