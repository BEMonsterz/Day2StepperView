//
//  StepperView.h
//  Day2StepperView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class StepperView;
@protocol StepperViewDelegate
- (void)stepperView:(StepperView *)stepperView valueChanged:(NSInteger)value;
@end
@interface StepperView : UIView

@property (nonatomic, weak) id<StepperViewDelegate> delegate;

@property (nonatomic, assign) NSInteger stepperValue;
@end