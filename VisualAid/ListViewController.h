//
//  ListViewController.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResourceManager.h"

#define pdf     @"pdf"
#define video   @"mp4"

@interface ListViewController : UIViewController
{
    UIButton *dismissButton;
    UITableView *table;
    NSMutableDictionary *resourceList;
    NSString *fileType;
    int productType;
}

@property (nonatomic) int productType;
@property (nonatomic, retain) UIButton *dismissButton;
@property (nonatomic, retain) IBOutlet UITableView *table;
@property (nonatomic, retain) NSMutableDictionary *resourceList;
@property (nonatomic, retain) NSString *fileType;

-(IBAction) dismiss;

- (void) setResourceIconForButtonTag:(int)tag;
- (void) pushResourceViewControllerWithFile:(NSString*)file;

@end
