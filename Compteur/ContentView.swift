//
//  ContentView.swift
//  Compteur
//
//  Created by Clément on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    
    var body: some View {
        VStack {
//            title
            Spacer()
            countText
            Spacer()
            buttons
        }
    }
    
    
    
    
//    // Exercice
//    var title: some View {
//        Text("Compteur")
//            .fontWeight(.semibold)
//            .padding()
//    }
//    //.
    
    var countText: some View {
        Text("\(count)")
            .font(.system(size: 150))
            .fontDesign(.serif)
            .fontWeight(.black)
    }
    
    var buttons: some View {
        HStack {
//            //Exercice task
//            Button(action: {count -= 1}) {
//                Text("-1")
//            }
//            //.
            
            Button(action: {count = 0}) {
                Text("Reset")
            }
            
            Button(action: {
                count += 1
                print("+1")}
            ) {
                Text("+1")
            }
        }
        .padding()
        .buttonStyle(BorderedButtonStyle())
    }
}










#Preview {
    ContentView()
}
