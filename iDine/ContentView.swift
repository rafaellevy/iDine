//
//  ContentView.swift
//  iDine
//
//  Created by Rafael Levy on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Text("hello world")
                    Text("hello world")
                    Text("hello world")
                }
            }.navigationTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
