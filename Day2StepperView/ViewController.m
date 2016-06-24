//
//  ViewController.m
//  Day2StepperView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"
#import "StepperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //
//    SwitchView *switchView = [[SwitchView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    switchView.center = self.view.center;
//    switchView.delegate = self;  // setting the view controller as a delegate to the switch view
//    [self.view addSubview:switchView];
//    
    
    
    StepperView *switchView = [[StepperView alloc] initWithFrame:CGRectMake(0, 0, 125,40)];
    switchView.delegate = self;  // setting the view controller as a delegate to the switch view
    [self.view addSubview:switchView];
}

-(void) switchViewValueChanged:(BOOL)on {
    NSLog(@"switchViewValueChanged");
}

-(void) plusButtonPressed:(id) sender {
    NSLog(@"plusButtonPressed");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end