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
                        Label("top stock", systemImage: "house")
                    }
                ContentView()
                    .tabItem {
                        Label("buy/sell", systemImage: "arrow.left.arrow.right")
                    }
            }.accentColor(.orange)
            
        }
    }
}


