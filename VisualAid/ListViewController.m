//
//  ListViewController.m
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import "ListViewController.h"
#import "HelperViewController.h"

@implementation ListViewController
@synthesize dismissButton,popOver,table,resource;

-(IBAction) dismiss{
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


            
        

    
//    if (self.popOverController.isPopoverVisible)
//    {
//        [self.popOverController dismissPopoverAnimated:YES];
//    } else
//    {
//        [self.popOverController presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
//        
//    }
//
    
}

-(void) viewWillAppear:(BOOL)animated{
    CGSize size = CGSizeMake(320, 480); // size of view in popover
    self.contentSizeForViewInPopover = size;
    [super viewWillAppear:animated];
}
- (void) viewDidAppear:(BOOL)animated{
    PDFTableViewController *primer = [[PDFTableViewController alloc] initWithStyle:UITableViewStylePlain];
    primer.view.frame = CGRectMake(33, 100, 300, 100);
    primer.contentSizeForViewInPopover = CGSizeMake(300.0,200 );
    self.popOver = [[[UIPopoverController alloc] 
                     initWithContentViewController:primer] autorelease]; 

    [primer release];
    
    
    //        
    //        
    //       [self.view addSubview:primer.view];
    
    
    
    //
    //if (self.view.window != nil)
    [self.popOver presentPopoverFromRect:CGRectMake(33, 100, 200, 100) inView:resource permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
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
