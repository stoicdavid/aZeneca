//
//  PDFTableViewController.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PDFTableViewController : UITableViewController<UIDocumentInteractionControllerDelegate>
{
NSString *nombreDelRecurso;


UIDocumentInteractionController *docInteractionController;
}

@property (nonatomic, retain) UIDocumentInteractionController *docInteractionController;


@property (nonatomic, retain) NSString *nombreDelRecurso;
- (void)setupDocumentControllerWithURL:(NSURL *)url;

@end
