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
        IDEBusiness *parent = [[IDEBusiness alloc] init]; //Clasico
        
        //Se asignan valores a la clase
        [parent setName:@"Inicializador padre"];
        //Se asignan con la sintaxis punto
        parent.details = @"Utiliza el inicializador padre, en este caso el de NSObject";
        parent.rating = 4;
        
        //Imprime el mensaje en consoloa reemplazando con las variables
        NSLog(@"El nombre del negocio es %@ y es un %@, además cuenta con una calificación %d",
              [parent name], //Recupera el valor con el mensaje
              parent.details, //Recupera el valor con la sintaxis punto
              parent.rating);
        
        //Creamos una instancia utilizando inicializador designado
        IDEBusiness *designado = [[IDEBusiness alloc] initWithName:@"Inicializador designado"
                                                                 details:@"Utiliza inicializador designado"
                                                                  rating:4];
        NSLog(@"El nombre del negocio es %@ y es un %@, además cuenta con una calificación %d",
              [designado name], //Recupera el valor con el mensaje
              designado.details, //Recupera el valor con la sintaxis punto
              designado.rating);
        
        
        //Creamos una instancia utilizando inicializador de convenienca
        IDEBusiness *conveniencia = [[IDEBusiness alloc] initWithName:@"Inicializador de conveniencia"];
        NSLog(@"El nombre del negocio es %@ y es un %@, además cuenta con una calificación %d",
              [conveniencia name], //Recupera el valor con el mensaje
              conveniencia.details, //Recupera el valor con la sintaxis punto
              conveniencia.rating);
        
        //Creamos una instancia utilizando metodo de clase
        IDEBusiness *metodoClase = [IDEBusiness businessWithName:@"Metodo de clase"
                                                    details:@"Utiliza metodos de clase"
                                                     rating:3];
        NSLog(@"El nombre del negocio es %@ y es un %@, además cuenta con una calificación %d",
              [metodoClase name], //Recupera el valor con el mensaje
              metodoClase.details, //Recupera el valor con la sintaxis punto
              metodoClase.rating);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
