//
//  mi_primera_pantalla.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 24/2/25.
//

import SwiftUI

struct mi_primera_pantalla: View {
    var body: some View{
    Spacer()
    CampoSencillo()
    Spacer()
    CampoSencillo()
    Spacer()
    CampoSencillo()
    }
}

struct CampoSencillo: View{
    @State private var texto = ""
    
    var body: some View {
        Spacer()
        Text("Hola \(texto)")
        Spacer()
        
        TextField ("Place Holder", text: $texto)
        
        Spacer()
        
        
        Button(action: {
            texto = ""
        }){
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .tint(.indigo)
        }
        .background(Color.teal)
    }
}

#Preview {
    mi_primera_pantalla()
}
