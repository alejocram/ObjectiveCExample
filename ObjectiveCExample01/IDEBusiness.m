//
//  IDEBusiness.m
//  ObjectiveCExample01
//
//  Created by Alejocram on 26/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import "IDEBusiness.h"

@implementation IDEBusiness

//Metodos de clase
+(id)businessWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating{
    return [[self alloc] initWithName:name
                              details:details
                               rating:rating];
}

//Inicializador designado
-(id)initWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating{
    if(self = [super init]){
        _name = name;
        _details = details;
        _rating = rating;
    }
    return self;
}

//Inicializadores de conveniencia
-(id)initWithName:(NSString *)name{
    return [self initWithName:name
                      details:@""
                       rating:3];
}


-(NSString *)description{
    return [NSString stringWithFormat:@"<%@: %@ %@ %d>", [self class], [self name], [self details], [self rating]];
}

@end
