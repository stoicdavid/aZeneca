//
//  ListViewController.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoViewController.h"

@interface ListViewController : UIViewController
{
    UIButton *dismissButton;
    UITableView *table;
    NSMutableDictionary *resourceList;
}

@property (nonatomic, retain) UIButton *dismissButton;
@property (nonatomic, retain) IBOutlet UITableView *table;
@property (nonatomic, retain) NSMutableDictionary *resourceList;


-(IBAction) dismiss;

- (void) setResourceIconForButtonTag:(int)tag;
- (void) pushResourceViewControllerWithFile:(NSString*)file;

@end
