//
//  ListViewController.m
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import "ListViewController.h"
#import "ResourceView.h"
#import <MediaPlayer/MediaPlayer.h>
#import "HelperViewController.h"

@implementation ListViewController
@synthesize dismissButton,table, resourceList, fileType, productType,logo;

-(IBAction) dismiss{
    [self dismissModalViewControllerAnimated:YES];

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
//        self.resourceList = [NSMutableDictionary dictionary];
//        [self.resourceList setObject:@"TicagrelorMecanismodeAccion" 
//                              forKey:@"Ticagrelor Mecanismo de Acción"];
//        [self.resourceList setObject:@"VideoCorazon" forKey:@"Video Corazón"];
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
//    int yPos = 200;
//    for (NSString* key in [resourceList allKeys]) {
//        ResourceView *resourceView = [[ResourceView alloc] initWithFrame:CGRectMake(300, yPos, 500, 50) 
//                                                      withLocalResponder:self 
//                                                               withTitle:key 
//                                                             andFileName:[resourceList objectForKey:key]];
//        [self.view addSubview:resourceView];
//        yPos += 60;
//    }
    
}



- (void) pushResourceViewControllerWithFile:(NSString*)file
{

    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] 
                                         pathForResource:file ofType:fileType]];
        
    if (fileType == pdf) {
        QLPreviewController *controlador1 = [[QLPreviewController alloc] init];
        HelperViewController *dummy = [[HelperViewController alloc] init];

        dummy.documents=[file stringByAppendingString:[NSString stringWithFormat:@".%@",fileType ]];
        controlador1.dataSource =dummy;
        controlador1.delegate=dummy;
        controlador1.currentPreviewItemIndex =0;

        [self presentModalViewController:controlador1 animated:YES];
          
        [controlador1 release]; 
    } else {
        MPMoviePlayerViewController *movController = [[MPMoviePlayerViewController alloc] 
                                                      initWithContentURL:url];
        [self presentMoviePlayerViewControllerAnimated:movController];
    }
}

- (void) setResourceIconForButtonTag:(int)tag
{
    ResourceManager *manager = [[ResourceManager alloc]init];
    
    NSString *resource = Nil;
    fileType = pdf;
    
    if (tag == 1) {
        resource = @"botonAyudaVisual.png";

        self.resourceList = [[NSMutableDictionary alloc ] initWithDictionary:[manager visualAidsByProduct:self.productType]];

        
    } else if(tag == 2) {
        resource = @"botonMaterialesExtra.png";
        self.resourceList = [[NSMutableDictionary alloc ] initWithDictionary:[manager extrasByProduct:self.productType]];

    } else if(tag == 3) {

        
        self.resourceList = [[NSMutableDictionary alloc ] initWithDictionary:[manager videosByProduct:self.productType]];
        resource = @"botonVideos.png";
                fileType = video;

    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:resource]];
    [imageView setFrame:CGRectMake(33, 203, imageView.frame.size.width, imageView.frame.size.height)];
    [self.view addSubview:imageView];
    
    int yPos = 200;
    for (NSString* key in [resourceList allKeys]) {
        
        ResourceView *resourceView = [[ResourceView alloc] initWithFrame:CGRectMake(300, yPos, 500, 50) 
                                                      withLocalResponder:self 
                                                               withTitle:key 
                                                             andFileName:[resourceList objectForKey:key]];
        [self.view addSubview:resourceView];
        yPos += 60;
    }
    
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
