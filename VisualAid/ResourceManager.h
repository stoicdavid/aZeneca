//
//  ResourceManager.h
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResourceManager : NSObject
{
    NSMutableDictionary *products;
    NSMutableArray *resources;
    
    NSArray *aids;
    NSArray *aidsK;
    NSArray *extras;
    NSArray *extrasK;
    NSArray *videos;
    NSArray *videosK;;        
    NSDictionary *aidsD;
    NSDictionary *extrasD;
    NSDictionary *videosD;
    

}

@property (retain,nonatomic) NSMutableDictionary *products;
@property (retain,nonatomic) NSMutableArray *resources;


- (id) init;
- (BOOL) productHasVisualAids:(int)product;
- (BOOL) productHasExtras:(int)product;
- (BOOL) productHasVideos:(int)product;

- (NSString *) nameOfProduct:(int)indexOfProduct;
- (NSDictionary *) visualAidsByProduct:(int)indexOfProduct;
- (NSDictionary *) extrasByProduct:(int)indexOfProduct;
- (NSDictionary *) videosByProduct:(int)indexOfProduct;

@end
