//
//  ContentView.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 21/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var txt_introducido_por_el_usuario: String = "Placeholder"
    @State private var txt_a_mostrar_en_saludo: String = "mundo"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hola! \(txt_introducido_por_el_usuario)")
            
            TextEditor(text: $txt_introducido_por_el_usuario)
            
            Button("¡Tocame! >:D", action: {
                if(txt_introducido_por_el_usuario == ""){
                    txt_a_mostrar_en_saludo = "mundo"
                }
                else{
                    txt_a_mostrar_en_saludo = txt_introducido_por_el_usuario
                    txt_introducido_por_el_usuario = ""
                }
                //  print("Se ha pulsado el boton")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
