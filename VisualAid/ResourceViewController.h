//
//  ResourceViewController.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"

@interface ResourceViewController : UIViewController
{

    UIButton *dismissButton;
    UIButton *resourceButton;
    
}

@property (nonatomic, retain) UIButton *dismissButton;
@property (nonatomic, retain) UIButton *resourceButton;

-(IBAction) dismiss;
-(IBAction) listResources;



@end
