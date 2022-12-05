//
//  ContentView.swift
//  iDine
//
//  Created by Triumph on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List {
                Text("Hello world 1")
                Text("Hello world 2")
                Text("Hello world 3")
            }
            .navigationTitle("Menu")
        }        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
