//
//  ViewController.m
//  Lab04
//
//  Created by Benjas on 26/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import "ViewController.h"
#import "TableScore.h"
int shoot = 0;


@interface ViewController ()

@property (strong, nonatomic) NSTimer *stopWatchTimer;
@property (strong, nonatomic) NSTimer *startDate;

@end


@implementation ViewController

int counter= 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)updateTimer
{
    //static NSInteger counter = 0;
    
    NSString *timeString = [[NSString alloc] initWithFormat:@"%i", counter ++];
    self.lblTime.text = timeString;
    
    if (counter >10 ) {
        [_stopWatchTimer invalidate];
        _stopWatchTimer = nil;
        counter = 0;
        self.btnShoot.enabled = false;
        self.btnScores.enabled = true;
    
    
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    
    NSString *currentTime = [dateFormatter stringFromDate:[NSDate date]];
    //[dateFormatter release]; dateFormatter = nil;
    self.tiempo =currentTime;
    self.lblDate.text = currentTime;
    
}

- (IBAction)btnStartPressed:(id)sender {
    self.btnShoot.enabled = true;
    self.btnScores.enabled = false;
    
    
    self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                        target:self
                                                        selector:@selector(updateTimer)
                                                         userInfo:nil repeats:YES];
    
}

- (IBAction)btnShootPressed:(id)sender {
    
    shoot ++;
    self.lblInfo.text = [NSString stringWithFormat:@"%i",shoot];
    
}



-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"segueLista"])
    {
        
        TableScore *scoreList = [segue destinationViewController];
        scoreList.puntaje = self.lblInfo.text;
        scoreList.fechaHora = self.lblDate.text;
        
    }
    
}


@end
