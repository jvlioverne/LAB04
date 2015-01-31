//
//  ViewController.h
//  Lab04
//
//  Created by Benjas on 26/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnShoot;
@property (strong, nonatomic) IBOutlet UILabel *lblTime;
- (IBAction)btnStartPressed:(id)sender;
- (IBAction)btnShootPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblInfo;
@property (strong, nonatomic) NSString *tiempo;

@end

