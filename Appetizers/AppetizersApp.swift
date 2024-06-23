//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/14/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
