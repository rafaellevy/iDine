//
//  iDineApp.swift
//  iDine
//
//  Created by Rafael Levy on 2/1/23.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
