//
//  IDEBusiness.h
//  ObjectiveCExample01
//
//  Created by Alejocram on 26/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IDEBusiness : NSObject

//Propiedades
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *details;
@property (nonatomic, assign) int rating;

//Metodos de clase
+(id)businessWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating;

//Inicializador designado
-(id)initWithName:(NSString *)name
              details:(NSString *)details
               rating:(int)rating;

//Inicializadores de conveniencia
-(id)initWithName:(NSString *)name;

@end
