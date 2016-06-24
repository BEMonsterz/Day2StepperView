//
//  StepperView.h
//  Day2StepperView
//
//  Created by Bryan Ayllon on 6/23/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SwitchViewDelegate

-(void) switchViewValueChanged:(BOOL) on;

@end

@interface StepperView : UIView
{
    
}

@property (nonatomic,weak) id<SwitchViewDelegate> delegate;

@end
