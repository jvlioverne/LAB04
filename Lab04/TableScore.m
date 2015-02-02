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

    // Convert string to date object
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMdd"];
    NSDate *date = [dateFormat dateFromString:fechaHora];
    
    [dateFormat setDateFormat:@"EEEE MMMM d, YYYY"];
    fechaHora = [dateFormat stringFromDate:date];
    //[dateFormat release];
    
    
   scoreArray = [[NSMutableArray alloc] init];
    [scoreArray addObject:puntaje];
    //[scoreArray release];
    
    fechaHoraArray = [[NSMutableArray alloc] init];
    [scoreArray addObject:[NSString stringWithFormat:fechaHora]];

    
    
    
    
    //scoreArray         =  [NSMutableArray arrayWithObjects:@"Walter González", @"Alejandra Bautista", @"Augusto Bustamante", @"José Chávez", @"Alberto Cordero", nil];
    
    //fechaHoraArray           =  [NSMutableArray arrayWithObjects: @"35", @"25", @"42", @"36", @"24", nil];


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
    
    //cell.lblAge.text        = maAge[indexPath.row];
    //cell.imgUser.image      = [UIImage imageNamed:maImgs[indexPath.row]];
    
    return cell;
}

//-------------------------------------------------------------------------------
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
 //   self.lblSelectedName.text = maNames[indexPath.row];
  //  NSString *strTemp;
    
  //  strTemp = [self.lblSelectedName.text stringByAppendingString: @" fué seleccionado"];
    
  //  if (indexPath.row == 2)
  //  {
  //      alert = [[UIAlertView alloc] initWithTitle:@"Alerta Oaxaca"
   //                                        message:strTemp
   //                                       delegate:self
   //                              cancelButtonTitle:@"Cancelar"
   //                              otherButtonTitles:@"Guardar", @"Publicar", nil];
    //    [alert show];
   // }
//}


@end
