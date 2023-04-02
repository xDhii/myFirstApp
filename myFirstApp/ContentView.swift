//
//  ContentView.swift
//  myFirstApp
//
//  Created by Adriano Valumin on 31/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert = false
    @State var changeText = false
    @State var stepperValue = 10

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()

                Button(action: {
                    self.changeText = !self.changeText
                }) {
                    Text("Botão 1")
                        .fontWeight(.bold)
                        .foregroundColor(Color("Primary Button"))
                }

                Spacer()

                Button(action: {
                    self.changeText = !self.changeText
                }) {
                    Text("Botão 2")
                        .fontWeight(.bold)
                        .foregroundColor(Color("Secondary Button"))
                }

                Spacer()


            }.padding(.vertical, 20)

            Stepper(value: $stepperValue, in: 1 ... 10) {
                Text("Stepper \(self.stepperValue)")
                    .foregroundColor(Color("Primary Text"))
            }
            
            Spacer()

            changeText ?
                Text("Agora é para mostrar")
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                :
                Text("Agora é para NÃO MOSTRAR")
                .fontWeight(.bold)
                .foregroundColor(Color.red)

            Spacer()

            Button(action: {
                self.changeText = !self.changeText
            }) {
                Text("Clique aqui")
                    .font(.subheadline)
                    .foregroundColor(Color("Primary Text"))
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
