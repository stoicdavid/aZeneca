//
//  PDFTableViewController.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PDFTableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
{
NSString *nombreDelRecurso;

}

@property (nonatomic, retain) NSString *nombreDelRecurso;


@end
