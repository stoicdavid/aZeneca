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
    [resources release];
    resources = [[NSMutableArray alloc] init];

}

- (id) init
{
    if ((self = [super init])) {
        products = [[NSMutableDictionary alloc]initWithCapacity:18]; 
        resources = [[NSMutableArray alloc] init];

        //Brilinta
        aids = [[NSArray alloc] initWithObjects:@"AVBrilinta", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Apoyo Visual Brilinta", nil];        
        extras = [[NSArray alloc] initWithObjects:@"RAEstudioPlato", nil];
        extrasK = [[NSArray alloc] initWithObjects:@"Recurso Adicional Estudio Plato", nil] ;        
        videos = [[NSArray alloc] initWithObjects:@"TicagrelorMecanismodeAccion",@"VideoCorazon", nil];
        videosK = [[NSArray alloc] initWithObjects:@"Ticagrelor Mecanismo de Acción",@"Video Corazón", nil] ;        
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
        aids = [[NSArray alloc] initWithObjects:@"AVOEtarjetonATORVASTATINA",@"AVOEtarjetonesCOMBINACION", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Apoyo Visual OE tarjeton ATORVASTATINA",@"Apoyo Visual tarjetones COMBINACION", nil];        
        videos = [[NSArray alloc] initWithObjects:@"FlatAZMexico_H264", nil];
        videosK = [[NSArray alloc] initWithObjects:@"Flat AZ Mexico_H264", nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        videosD = [[NSDictionary alloc] initWithObjects:videos forKeys:videosK];
        
        [resources addObject:@"Crestor"];
        [resources addObject:aidsD];
        [resources addObject:@""];
        [resources addObject:videosD];

        [resources addObject:@"101"];   
        [products setObject:resources forKey:[NSNumber numberWithInt:2]];

        [self eraseResources];
        
        //Onglyza
        aids = [[NSArray alloc] initWithObjects:@"AVOnglyza", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Apoyo Visual Onglyza", nil];        
        extras = [[NSArray alloc] initWithObjects:@"RAEstructuraPromocionalSeguridadEficacia",@"RAEstudioSeguridadEficacia", nil];
        extrasK = [[NSArray alloc] initWithObjects:@"Estructura Promocional Seguridad Eficacia", @"Estudio Seguridad Eficacia", nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        extrasD = [[NSDictionary alloc] initWithObjects:extras forKeys:extrasK];

        
        [resources addObject:@"Onglyza"];
        [resources addObject:aidsD];
        [resources addObject:extrasD];
        [resources addObject:@"110"];
        [products setObject:resources forKey:[NSNumber numberWithInt:3]];
       
        [self eraseResources];
        

        //Atacand
        
        aids = [[NSArray alloc] initWithObjects:@"AVTarjetonAtacand", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Tarjeton Atacand", nil];        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];

        
        
        [resources addObject:@"Atacand"];
        [resources addObject:aidsD];
        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:4]];
        
        [self eraseResources];
        
        //Nexium 2.5
        aids = [[NSArray alloc] initWithObjects:@"AVNexium2_5", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Nexium Sachets 2.5", nil];        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        
        
        
        [resources addObject:@"Nexium2.5"];
        [resources addObject:aidsD];
        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:5]];
        
        [self eraseResources];
        
        //Nexium Mups
        
        
        aids = [[NSArray alloc] initWithObjects:@"AVNexiumMups", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Nexium Mups", nil];        
        extras = [[NSArray alloc] initWithObjects:@"RACampanaTV",@"RADipticoRIMA",@"RATarjetonAtlasparaiPad",@"RATarjetonNexiumMupsInstitucionales",@"RATripticoRIMA", nil];
        extrasK = [[NSArray alloc] initWithObjects:@"Campaña TV",@"Díptico RIMA",@"Tarjetón Atlas para iPad",@"Tarjetón Nexium Mups Institucionales",@"Tríptico RIMA", nil] ;        
        videos = [[NSArray alloc] initWithObjects:@"ComercialTVNexium.mp4", nil];
        videosK = [[NSArray alloc] initWithObjects:@"Comercial TV Nexium", nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        extrasD = [[NSDictionary alloc] initWithObjects:extras forKeys:extrasK];
        videosD = [[NSDictionary alloc] initWithObjects:videos forKeys:videosK];
        
        [resources addObject:@"NexiumMups"];
        [resources addObject:aidsD];
        [resources addObject:extrasD];
        [resources addObject:videosD];
        [resources addObject:@"111"];
        [products setObject:resources forKey:[NSNumber numberWithInt:6]];
        
        [self eraseResources];
        
        
        //Pulmicort
        
        aids = [[NSArray alloc] initWithObjects:@"TarjetonPresentacionesPulmicort", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Tarjetón de Presentaciones Pulmicort", nil];        

        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];

        
        [resources addObject:@"Pulmicort"];
        [resources addObject:aidsD];


        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:7]];
        
        [self eraseResources];
        
        
        //Rhinocort
        
        aids = [[NSArray alloc] initWithObjects:@"TarjetonPresentacionesRhinocort", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Tarjetón de Presentaciones Rhinocort", nil];        
        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        
        
        [resources addObject:@"Rhinocort"];
        [resources addObject:aidsD];
        
        
        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:8]];
        
        [self eraseResources];    
        
        
        //Symbicort
        
        aids = [[NSArray alloc] initWithObjects:@"TarjetonSymbicortInstitucionales",@"TarjetonAtlasiPad(Respiratorio)",@"TarjetonPrecios(VannairSimbicort)",@"TarjetonpresentacionesSymbicort", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Tarjetón Symbicort-Institucionales",@"Tarjetón Atlas (Respiratorio)",@"Tarjetón Precios (Vannair y Symbicort)",@"Tarjetón de Presentaciones Symbicort", nil];        

        videos = [[NSArray alloc] initWithObjects:@"B2agonista",@"Budesonida",@"corticoidesinhalados",@"Mecanismocorticoides",@"mecanismoSymbicort",@"Rutacorticoides", nil];
        videosK = [[NSArray alloc] initWithObjects:@"Mecanismo de acción B2 agonista LABA",@"Budesonida y formoterol efecto sinérgico único",@"Duración de la acción de los corticoides inhalados",@"Mecanismo de acción corticoides inhalados",@"Funcionamiento y mecanismo de Symbicort Turbuhaler",@"Ruta de los corticoides inhalados", nil] ;        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];

        videosD = [[NSDictionary alloc] initWithObjects:videos forKeys:videosK];
        
        [resources addObject:@"Symbicort"];
        [resources addObject:aidsD];
        [resources addObject:@""];
        [resources addObject:videosD];
        [resources addObject:@"101"];
        [products setObject:resources forKey:[NSNumber numberWithInt:9]];
        
        [self eraseResources];
        
        
        
        //Vannair
        extras = [[NSArray alloc] initWithObjects:@"TarjetonAtlas",@"TarjetonPresentacionesVannair",@"TarjetonPrecios", nil];
        extrasK = [[NSArray alloc] initWithObjects:@"Tarjetón Atlas para iPad (Respiratorio)",@"Tarjetón de Presentaciones Vannair",@"Tarjetón Precios", nil];        
        
        extrasD = [[NSDictionary alloc] initWithObjects:extras forKeys:extrasK];
        
        
        [resources addObject:@"Vannair"];
        [resources addObject:@""];
        [resources addObject:extrasD];        
        
        [resources addObject:@"010"];
        [products setObject:resources forKey:[NSNumber numberWithInt:10]];
        
        [self eraseResources]; 
        
        
        //Seroquel
        
        aids = [[NSArray alloc] initWithObjects:@"AVEsquizofrenia",@"AVTrastornoBipolar", nil];
        aidsK = [[NSArray alloc] initWithObjects:@"Esquizofrenia",@"Trastorno Bipolar", nil];        
        
        aidsD = [[NSDictionary alloc] initWithObjects:aids forKeys:aidsK];
        
        
        [resources addObject:@"Seroquel"];
        [resources addObject:aidsD];
        
        
        [resources addObject:@"100"];
        [products setObject:resources forKey:[NSNumber numberWithInt:11]];
        
        [self eraseResources];    
        

        
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
    NSString *value = [vector substringWithRange:NSMakeRange(0, 1)];
    if ([value isEqualToString:@"1"]){

        return YES;
    }else{
        return NO;
    }
}
- (BOOL) productHasExtras:(int)product{
    NSArray *temp = [products objectForKey:[NSNumber numberWithInt:product]];
    NSString *vector = [temp objectAtIndex:temp.count-1];
    NSString *value = [vector substringWithRange:NSMakeRange(1, 1)];
    if ([value isEqualToString:@"1"]){

        return YES;
    }else{
        return NO;
    }
    
}
- (BOOL) productHasVideos:(int)product{
    NSArray *temp = [products objectForKey:[NSNumber numberWithInt:product]];
    NSString *vector = [temp objectAtIndex:temp.count-1];
    NSString *value = [vector substringWithRange:NSMakeRange(2, 1)];
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
