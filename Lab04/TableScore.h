//
//  TableScore.h
//  Lab04
//
//  Created by Benjas on 29/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableScore : UIViewController <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tblScore;
@property (strong, nonatomic) NSString *puntaje;
@property (strong, nonatomic) NSString *fechaHora;




@end
