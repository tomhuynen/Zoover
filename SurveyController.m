//
//  ViewController.m
//  Zoover
//
//  Created by Tom Huynen on 9/3/12.
//  Copyright (c) 2012 MXA. All rights reserved.
//

#import "SurveyController.h"

@implementation SurveyController
@synthesize lblQuestion;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    questions = [NSArray arrayWithObjects:@"vraag 1", @"vraag 2", @"vraag 3", nil];
    questionIndex = 0;
    
    lblQuestion.text = [questions objectAtIndex:questionIndex];
    
}

- (void)viewDidUnload
{
    [self setLblQuestion:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (void) answer:(id)sender
{
    NSLog(@"user clicked %@", sender); 
    
    if(questionIndex < [questions count] - 1)
    {
        questionIndex ++;
        lblQuestion.text = [questions objectAtIndex:questionIndex];        
    }
    else
    {
        [self performSegueWithIdentifier:@"toContentView" sender:self];
    }
}

@end
