//
//  StepperView.m
//  Day2StepperView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    [self setup];
    return self;
}

- (void)setup {
    UIView *stepperView = [[UIView alloc] init];
    stepperView.frame = CGRectMake(0, 0, 300, 40);
    
    stepperView.backgroundColor = [UIColor colorWithRed:21/255.0 green:101/255.0 blue:192/255.0 alpha:1.0];
    [self addSubview:stepperView];
    
    //    Add Button
    UIButton *rightView = [[UIButton alloc] init];
    rightView.frame = CGRectMake(stepperView.frame.size.width/2 + 50, stepperView.frame.size.height/2 - 20, 100, 40);
    
    rightView.backgroundColor = [UIColor colorWithRed:33/255.0 green:150/255.0 blue:243/255.0 alpha:1.0];
    [rightView setTitle:@"+" forState:UIControlStateNormal];
    
    [rightView addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [stepperView addSubview:rightView];
    
    //    Subtract Button
    UIButton *leftView = [[UIButton alloc] init];
    leftView.frame = CGRectMake(stepperView.frame.size.width/2 - 150, stepperView.frame.size.height/2 - 20, 100, 40);
    
    leftView.backgroundColor = [UIColor colorWithRed:33/255.0 green:150/255.0 blue:243/255.0 alpha:1.0];
    [leftView setTitle:@"-" forState:UIControlStateNormal];
    [leftView addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [stepperView addSubview:leftView];


}

- (void)buttonPressed:(id)sender{
    UIButton *button = (UIButton *) sender;
    
    NSString *title = button.titleLabel.text;
    if([title isEqualToString:@"-"]) {
        self.stepperValue--;
    } else {
        self.stepperValue++;
    }
    
    [self.delegate stepperView:self valueChanged:self.stepperValue];
    //    NSLog(@"%@",title);
}

@end