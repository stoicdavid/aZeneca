//
//  HelperViewController.m
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import "HelperViewController.h"

@implementation HelperViewController
@synthesize documents;


-(IBAction) closeWindow: (id) sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (BOOL) previewController:(QLPreviewController *)controller shouldOpenURL:(NSURL *)url forPreviewItem:(id<QLPreviewItem>)item{
    return YES;
}

-(NSInteger) numberOfPreviewItemsInPreviewController: (QLPreviewController *) controller{
    return 1;
}

- (id <QLPreviewItem>) previewController: (QLPreviewController *) controller previewItemAtIndex:(NSInteger)index{
    
    return [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:documents ofType:nil]];
    
}


- (void)previewControllerWillDismiss:(QLPreviewController *)controller {
    [controller presentingViewController].view.frame = CGRectMake(0, 20, 1024, 768);
}

- (void)dealloc
{
    [documents release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end
