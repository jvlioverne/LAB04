//
//  TableScore.m
//  Lab04
//
//  Created by Benjas on 29/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import "TableScore.h"
NSMutableArray *scoreArray;
NSMutableArray *fechaHoraArray;


@interface TableScore ()

@end

@implementation TableScore

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scoreArray addObject:@"puntaje"];
    [scoreArray addObject:@"fechaHora"];
    
    
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

@end
