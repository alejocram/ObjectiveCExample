//
//  main.m
//  ObjectiveCExample01
//
//  Created by Alejocram on 26/07/15.
//  Copyright (c) 2015 IdeasLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "IDEBusiness.h"

int main(int argc, char * argv[]) {
    
    //Lo que hace es que la gestion de memoria sera automatico
    @autoreleasepool {
        
        // Creamos una instancia de nuestra clase
//        IDEBusiness *business = [IDEBusiness new]; //Moderno
        IDEBusiness *business = [[IDEBusiness alloc] init]; //Clasico
        
        //Se asignan valores a la clase
        [business setName:@"Negocio 1"];
        //Se asignan con la sintaxis punto
        business.details = @"Negocio de ejemplo 1";
        business.rating = 4;

        //Imprime el mensaje en consoloa reemplazando con las variables
        NSLog(@"El nombre del negocio es %@ y es un %@, además cuenta con una calificación %d",
              [business name], //Recupera el valor con el mensaje
              business.details, //Recupera el valor con la sintaxis punto
              business.rating);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
