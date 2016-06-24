//
//  StepperView.m
//  Day2StepperView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import "StepperView.h"


@implementation StepperView


-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    [self setup];
    return self;
    
    
    
}

-(void) setup{

    UIView *middleView = [[UIView alloc] init];
    middleView.frame = CGRectMake(125,self.frame.size.height +300,125,40);
    middleView.backgroundColor = [UIColor colorWithRed:21/255.0 green:101/255.0 blue:192/255.0 alpha:1.0];

    [self addSubview:middleView];
    
//    
//    UIButton *leftView = [[UIButton alloc] init];
//    leftView.frame= CGRectMake(middleView.frame.size.width/2 -112  ,middleView.frame.size.height/2 -20 ,50,40);
//    leftView.backgroundColor = [UIColor colorWithRed:33/255.0 green:150/255.0 blue:243/255.0 alpha:1.0];
//    [middleView addSubview:leftView];

    UIButton *rightView = [[UIButton alloc] init];
    rightView.frame= CGRectMake(middleView.frame.size.width/2 +50 ,middleView.frame.size.height/2 -20,50,40);
   
    
    
    
    [rightView addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [rightView setTitle:@"OFF" forState:UIControlStateNormal];
    
    
    
    
    rightView.backgroundColor = [UIColor colorWithRed:33/255.0 green:150/255.0 blue:243/255.0 alpha:1.0];
    
    
    
    
    [middleView addSubview:rightView];

    
//    [rightView setTitle:@"+" forState:UIControlStateNormal];
//    [leftView setTitle:@"-" forState:UIControlStateNormal];
 }


-(void) buttonPressed:(id) sender {
    
    UIButton *rightView = (UIButton *) sender;
    
    NSString *title = rightView.titleLabel.text;
    
    if([title isEqualToString:@"OFF"]) { // if the button is OFF
        [rightView setTitle:@"ON" forState:UIControlStateNormal];
        rightView.backgroundColor = [UIColor greenColor];
        
        // notify the delegates
        [self.delegate switchViewValueChanged:YES];
        
    } else { // if the button is ON
        [rightView setTitle:@"OFF" forState:UIControlStateNormal];
        rightView.backgroundColor = [UIColor redColor];
        
        [self.delegate switchViewValueChanged:NO];
        
    }
    
    NSLog(@"I am pressed");
    NSLog(@"%@",title);
    
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
