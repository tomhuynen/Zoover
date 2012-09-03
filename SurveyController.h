//
//  ViewController.h
//  Zoover
//
//  Created by Tom Huynen on 9/3/12.
//  Copyright (c) 2012 MXA. All rights reserved.
//

#import <UIKit/UIKit.h>

NSArray *questions;
int questionIndex;

@interface SurveyController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblQuestion;
- (IBAction)answer:(id)sender;
@end
