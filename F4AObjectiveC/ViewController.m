//
//  ViewController.m
//  F4AObjectiveC
//
//  Created by Raja on 24/09/2018.
//  Copyright © 2018 Raja. All rights reserved.
//

#import "ViewController.h"
#import <F4A/FantasyManager.h>



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[FantasyManager FantasyBegin] InView: self];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)GameCompleted {
    
    // Please check the matchup id null or got value before update score.
    // If null their is no matchup id
    
    NSString *GetMatchId=[FantasyManager FantasyBegin].GetCurrentMatchID;
    
    [[FantasyManager FantasyBegin] UpdateWithGameScore:@""  WithMatchID:GetMatchId InView:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
