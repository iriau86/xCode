//
//  ContentView.swift
//  Test1
//
//  Created by Iris Yazmin Cerecedo Briones on 15/07/20.
//  Copyright © 2020  All rights reserved.
//

import SwiftUI

class ColeccionPaises {
    
    var paises = [
    "Afganistán",
    "Albania",
    "Alemania",
    "Andorra",
    "Angola",
    "Argelia",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaiyán",
    "Bahamas",
    "Bahrein",
    "Bangladesh",
    "Barbados",
    "Belarús",
    "Belgica",
    "Belice",
    "Benin",
    "Mèxico"
    ]
    
    func obtenPais( )->String{
        let posicionp = Int(arc4random()) % paises.count
        return paises[posicionp]
    }
}

class Hamburguesas {
    
    var hamburg = [
    "Mi Hamburguesa Estilo 1",
    "La Hamburguesota de Este Pais",
    "Señora Hamburguesa",
    "Hamburgueson",
    "Hamburguesitititita",
    "Hamburguesa Grasosa",
    "Hamburguesa Ligth",
    "Hamburguezasa",
    "DobleHamburguesa",
    "Hamburguesa Mexicana",
    "Hamburguesa Extranjera",
    "Hamburguesa Sorpresa",
    "Hamburguesa Chispas",
    "Hamburguesa pobre",
    "Hamburguesa Rica",
    "Hamburguesa con Papas",
    "Hamburguea con jamon",
    "Hamburguesa Fea",
    "Hamburchita",
    "Hamburguesa Final"
    ]
    
      func RegresaHamburguesa() -> String {
          let posicionh = Int(arc4random()) % hamburg.count
        return hamburg[posicionh]
      }
      
}
struct ContentView: View {
    
    @State var alertIsVisible :Bool = false
    var cP = ColeccionPaises()
    var hO = Hamburguesas()
    
    let colores = [
        Color.red,
        Color.blue,
        Color.yellow,
        Color.green,
        Color.gray
       ]
    
    
    var body: some View {
        VStack{
            
            /*Etiqueta pais*/
            Text("Esto serà un mensaje positivo")
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
            
       
            Button(action: {
                        self.alertIsVisible=true
                         
                    }) {
                        RegresaColoraleatoriio()
                       
                        Text("quiero una hamburguesa ")
                            .alert(isPresented:$alertIsVisible){ ()-> Alert in
                                return Alert(title: Text("\(cP.obtenPais())"), message: Text("\(hO.RegresaHamburguesa())"), dismissButton: .default(Text("Aceptar")))
                                
                        }
                        
                    }
        
        }
        
        
    }
    
    func RegresaColoraleatoriio() ->Color{
        let posicion = Int(arc4random()) % colores.count
      return colores[posicion]
    }
    
  
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


