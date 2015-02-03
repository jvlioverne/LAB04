//
//  TableScore.m
//  Lab04
//
//  Created by Benjas on 29/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import "TableScore.h"
#import "myCell.h"

NSMutableArray *scoreArray;
NSMutableArray *fechaHoraArray;


@interface TableScore ()

@end

@implementation TableScore

@synthesize puntaje,fechaHora;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initController];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)initController
{

   scoreArray = [[NSMutableArray alloc] init];
    [scoreArray addObject:puntaje];
    
    fechaHoraArray = [[NSMutableArray alloc] init];
    [fechaHoraArray addObject:fechaHora];

}


/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return scoreArray.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"myCell");
    static NSString *CellIdentifier = @"myCell";
    
    
    myCell *cell = (myCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[myCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblScore.text       = scoreArray[indexPath.row];
    cell.lblFechaHora.text   = fechaHoraArray[indexPath.row];
    
    
    return cell;
}




@end
