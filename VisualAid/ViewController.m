//
//  ViewController.m
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize productButton;

-(IBAction) openResources
{
    
    ResourceViewController *resource = [[ResourceViewController alloc] initWithNibName:@"ResourceViewController" bundle:nil];
    resource.modalTransitionStyle=UIModalTransitionStyleCoverVertical;

	[self presentModalViewController:resource animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    [productButton release];
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
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end
