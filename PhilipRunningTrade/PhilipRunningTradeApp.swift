//
//  PhilipRunningTradeApp.swift
//  PhilipRunningTrade
//
//  Created by Arief Ramadhan on 26/10/22.
//

import SwiftUI

@main
struct PhilipRunningTradeApp: App {
    var body: some Scene {
        WindowGroup {
            TabView() {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ContentView()
                    .tabItem {
                        Label("List", systemImage: "bookmark")
                    }
            }.accentColor(.orange)
            
        }
    }
}


