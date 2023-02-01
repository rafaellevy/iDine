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
                    Section(section.name) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }.navigationTitle("Menu")
                .listStyle(.grouped)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
