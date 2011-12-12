//
//  ListViewController.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDFTableViewController.h"

@interface ListViewController : UIViewController
{
    UIButton *dismissButton;
    UIPopoverController *popOver;
    UITableView *table;
    UIButton *resource;
}

@property (nonatomic, retain) UIButton *dismissButton;
@property (nonatomic, retain) IBOutlet UIButton *resource;
@property (nonatomic, retain) UIPopoverController *popOver;
@property (nonatomic, retain) IBOutlet UITableView *table;


-(IBAction) dismiss;


@end
