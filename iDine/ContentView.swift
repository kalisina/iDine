//
//  ContentView.swift
//  iDine
//
//  Created by Triumph on 05/12/2022.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationStack{
            List {
                ForEach(menu) { section in
                    Section(section.name){
                        ForEach(section.items) { item in
                            //Text(item.name)
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
