//
//  iDineApp.swift
//  iDine
//
//  Created by Triumph on 05/12/2022.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
