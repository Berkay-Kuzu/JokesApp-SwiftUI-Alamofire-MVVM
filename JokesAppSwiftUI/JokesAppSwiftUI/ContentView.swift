//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Berkay Kuzu on 24.09.2022.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List(jokesVM.jokes /* Görmek istediğim şeyi buraya yazıyorum.*/ ) { element in
                
                Text(element.joke)
                
            
            }.toolbar {
                
                Button(action: addData) {
                    Text("Get New Joke")
                }
                
            }
            .navigationTitle("Jokes App")
    
        }
    }
    
    func addData() {
        jokesVM.getJokes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
