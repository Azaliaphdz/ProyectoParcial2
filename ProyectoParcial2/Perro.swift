//
//  Perro.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Perro{
    var origen: String
    var nombre: String
    var tamano: String
    var icono: String
    var principal: String
    var altura: String
    var peso: String
    var pelaje: String
    var espe: String
    var caracter: String
    var sabias: String
    var color1: String
    var color2: String
    var color3: String
    var color4: String
    var color5: String
    
    var datos: [Dato]
    
    init(origen: String, nombre: String, tamano: String, icono: String, altura: String, peso: String, pelaje: String, espe: String, caracter: String, sabias: String, color1: String, color2: String, color3: String, color4: String, color5: String, principal: String, datos: [Dato]) {
        self.origen = origen
        self.nombre = nombre
        self.tamano = tamano
        self.icono = icono
        self.altura = altura
        self.peso = peso
        self.pelaje = pelaje
        self.espe = espe
        self.caracter = caracter
        self.datos = datos
        self.color1 = color1
        self.color2 = color2
        self.color3 = color3
        self.color4 = color4
        self.color5 = color5
        self.sabias = sabias
        self.principal = principal
    }
}
