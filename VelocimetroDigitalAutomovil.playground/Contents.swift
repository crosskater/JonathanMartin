//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto{
    
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        
        let actual = velocidad.rawValue
        let velocidadEnCadena : String
        
        switch(velocidad){
        case .Apagado:
            velocidadEnCadena="Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadEnCadena="Velocidad Baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidadEnCadena="Velocidad Media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidadEnCadena="Velocidad Alta"
            velocidad = .VelocidadMedia
        }
        
        let result = (actual ,velocidadEnCadena)
        return result
        
    }
    
}

var auto = Auto()
for i in 1...20{
    print("\(auto.cambioDeVelocidad())")}