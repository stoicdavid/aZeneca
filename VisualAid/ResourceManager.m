//
//  ResourceManager.m
//  VisualAid
//
//  Created by David Rodriguez on 12/11/11.
//  Copyright (c) 2011 UNAM. All rights reserved.
//

#import "ResourceManager.h"

@implementation ResourceManager
@synthesize products,resources;


- (void) eraseResources{
    [resources removeAllObjects];
    aids=nil;
    aidsK=nil;
    extras=nil;
    extrasK=nil;
    videos=nil;
    videosK=nil;        
    aidsD=nil;
    extrasD=nil;
    videosD=nil;
}

- (id) init
{
    if ((self = [super init])) {
        products = [[NSMutableDictionary alloc]initWithCapacity:18]; 
        resources = [[NSMutableArray alloc] init];

        //Brilinta
        aids = [[NSArray alloc] initWithObjects:@"AVBrilinta.pdf", nil];
        aidsK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil];        
        extras = [[NSArray alloc] initWithObjects:@"RAEstudioPlato.PDF", nil];
        extrasK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil] ;        
        videos = [[NSArray alloc] initWithObjects:@"TicagrelorMecanismodeAccion.mp4",@"VideoCorazon.mp4", nil];
        videosK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:1], nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        extrasD = [[NSDictionary alloc] initWithObjects:extras forKeys:extrasK];
        videosD = [[NSDictionary alloc] initWithObjects:videos forKeys:videosK];
        
        [resources addObject:@"Brilinta"];
        [resources addObject:aidsD];
        [resources addObject:extrasD];
        [resources addObject:videosD];
        [resources addObject:@"111"];
        [products setObject:resources forKey:[NSNumber numberWithInt:1]];
        
        [self eraseResources];

        
        //Crestor
        aids = [[NSArray alloc] initWithObjects:@"AVOEtarjetonATORVASTATINA.pdf",@"AVOEtarjetonesCOMBINACION.pdf", nil];
        aidsK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:2], nil];        
        videos = [[NSArray alloc] initWithObjects:@"FlatAZMexico_H264.mp4", nil];
        videosK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        videosD = [[NSDictionary alloc] initWithObjects:videos forKeys:videosK];
        
        [resources addObject:@"Crestor"];
        [resources addObject:aidsD];
        [resources addObject:videosD];
        [resources addObject:@"101"];   
        [products setObject:resources forKey:[NSNumber numberWithInt:2]];

        [self eraseResources];
        
        //Onglyza
        aids = [[NSArray alloc] initWithObjects:@"AVOnglyza.pdf", nil];
        aidsK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil];        
        extras = [[NSArray alloc] initWithObjects:@"RAEstructuraPromocionalSeguridadEficacia.pdf",@"RAEstudioSeguridadEficacia.pdf", nil];
        extrasK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:2], nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        extrasD = [[NSDictionary alloc] initWithObjects:extras forKeys:extrasK];

        
        [resources addObject:@"Onglyza"];
        [resources addObject:aidsD];
        [resources addObject:extrasD];
        [resources addObject:@"110"];
        [products setObject:resources forKey:[NSNumber numberWithInt:3]];
        
        [self eraseResources];
        

        //Atacand
        
        aids = [[NSArray alloc] initWithObjects:@"AVTarjetonAtacand.pdf", nil];
        aidsK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil];        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];

        
        
        [resources addObject:@"Atacand"];
        [resources addObject:aidsD];
        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:4]];
        
        [self eraseResources];
        
        //Nexium 2.5
        aids = [[NSArray alloc] initWithObjects:@"AVNexium2_5.pdf", nil];
        aidsK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil];        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        
        
        
        [resources addObject:@"Nexium 2.5"];
        [resources addObject:aidsD];
        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:5]];
        
        [self eraseResources];
        
        //Nexium Mups
        
        
        aids = [[NSArray alloc] initWithObjects:@"AVNexiumMups.pdf", nil];
        aidsK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil];        
        extras = [[NSArray alloc] initWithObjects:@"RACampanaTV.jpg",@"RADipticoRIMA.pdf",@"RATarjetonAtlasparaiPad.pdf",@"RATarjetonNexiumMupsInstitucionales.pdf",@"RATripticoRIMA.pdf", nil];
        extrasK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],[NSNumber numberWithInt:3],[NSNumber numberWithInt:4],[NSNumber numberWithInt:5], nil] ;        
        videos = [[NSArray alloc] initWithObjects:@"ComercialTVNexium.mp4", nil];
        videosK = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:1], nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        extrasD = [[NSDictionary alloc] initWithObjects:extras forKeys:extrasK];
        videosD = [[NSDictionary alloc] initWithObjects:videos forKeys:videosK];
        
        [resources addObject:@"Nexium Mups"];
        [resources addObject:aidsD];
        [resources addObject:extrasD];
        [resources addObject:videosD];
        [resources addObject:@"111"];
        [products setObject:resources forKey:[NSNumber numberWithInt:6]];
        
        [self eraseResources];
        
        
        //Pulmicort
        [products setObject:@"Pulmicort" forKey:[NSNumber numberWithInt:7]];
        
        //Rhinocort
        
        [products setObject:@"Rhinocort" forKey:[NSNumber numberWithInt:8]];
        
        //Symbicort
        
        [products setObject:@"Symbicort" forKey:[NSNumber numberWithInt:9]];
        
        
        //Vannair
        
        [products setObject:@"Vannair" forKey:[NSNumber numberWithInt:10]];
        
        //Seroquel
        
        [products setObject:@"Seroquel" forKey:[NSNumber numberWithInt:11]];
        
        //Merrem
        [products setObject:@"Merrem" forKey:[NSNumber numberWithInt:12]];
        
        //Salvemos el corazon
        [products setObject:@"Salvemos el corazón" forKey:[NSNumber numberWithInt:13]];
        
        //Armidex
        [products setObject:@"Arimidex" forKey:[NSNumber numberWithInt:14]];
        
        //Casodex-Zoldex
        [products setObject:@"Casodex-Zoladex" forKey:[NSNumber numberWithInt:15]];
        
        //Iressa
        [products setObject:@"Iressa" forKey:[NSNumber numberWithInt:16]];
        
        //Fasiodex
        [products setObject:@"Fasiodex" forKey:[NSNumber numberWithInt:17]];
        
        //Nexium IV
        [products setObject:@"Nexium IV" forKey:[NSNumber numberWithInt:18]];



    }
    return self;
}
- (BOOL) productHasVisualAids:(int)product{
    NSArray *temp = [products objectForKey:[NSNumber numberWithInt:product]];
    NSString *vector = [temp objectAtIndex:temp.count-1];
    NSString *value = [vector substringToIndex:0];
    if ([value isEqualToString:@"1"]){
        return YES;
    }else{
        return NO;
    }
}
- (BOOL) productHasExtras:(int)product{
    NSArray *temp = [products objectForKey:[NSNumber numberWithInt:product]];
    NSString *vector = [temp objectAtIndex:temp.count-1];
    NSString *value = [vector substringToIndex:1];
    if ([value isEqualToString:@"1"]){
        return YES;
    }else{
        return NO;
    }
    
}
- (BOOL) productHasVideos:(int)product{
    NSArray *temp = [products objectForKey:[NSNumber numberWithInt:product]];
    NSString *vector = [temp objectAtIndex:temp.count-1];
    NSString *value = [vector substringToIndex:2];
    if ([value isEqualToString:@"1"]){
        return YES;
    }else{
        return NO;
    }    
    
}
- (NSString *) nameOfProduct:(int)indexOfProduct{

        NSArray *temp = [products objectForKey:[NSNumber numberWithInt:indexOfProduct]];
        NSString *tempo = [temp objectAtIndex:0];
        return tempo;

}

- (NSDictionary *) visualAidsByProduct:(int)indexOfProduct{
    if ([self productHasVisualAids:indexOfProduct]){
        NSArray *temp = [products objectForKey:[NSNumber numberWithInt:indexOfProduct]];
        NSDictionary *tempo = [temp objectAtIndex:1];
        return tempo;
    }else{
        return nil;
    }
}

- (NSDictionary *) extrasByProduct:(int)indexOfProduct{
    if ([self productHasExtras:indexOfProduct]){
        NSArray *temp = [products objectForKey:[NSNumber numberWithInt:indexOfProduct]];
        NSDictionary *tempo = [temp objectAtIndex:2];
        return tempo;
    }else{
        return nil;
    }
    
}
- (NSDictionary *) videosByProduct:(int)indexOfProduct{
    if ([self productHasVideos:indexOfProduct]){
        NSArray *temp = [products objectForKey:[NSNumber numberWithInt:indexOfProduct]];
        NSDictionary *tempo = [temp objectAtIndex:3];
        return tempo;
    }else{
        return nil;
    }    
}

- (void) dealloc{
    
    [products release];
    [resources release];
    [aids release];
    [extras release];
    [videos release];
    [aidsK release];
    [extrasK release];
    [videosK release];
    [aidsD release];
    [extrasD release];
    [videosD release];
    [super dealloc];
}

@end
