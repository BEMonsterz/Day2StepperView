//
//  ViewController.m
//  Day2StepperView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "ViewController.h"
#import "StepperView.h"

@interface ViewController () <StepperViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    StepperView *stepperView = [[StepperView alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    
    stepperView.center = self.view.center;
    [self.view addSubview:stepperView];
    stepperView.delegate = self;
    
    //    Label
    self.valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(183, 278, 100, 100)];
    [self.valueLabel setTextColor:[UIColor whiteColor]];
    
    [self.view addSubview:self.
     
     valueLabel];
}

#pragma mark - StepperViewDelegate

- (void)stepperView:(StepperView *)stepperView valueChanged:(NSInteger)value {
    
    self.valueLabel.text = [NSString stringWithFormat:@"%ld", (long)value];
}
@end
