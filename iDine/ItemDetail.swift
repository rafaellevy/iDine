//
//  ItemDetail.swift
//  iDine
//
//  Created by Rafael Levy on 2/2/23.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    var body: some View {
        
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(item.mainImage)
                        .resizable()
                        .scaledToFit()
                    
                    Text("Photo: \(item.photoCredit)")
                        .background(.black)
                        .padding(4)
                        .font(.caption)
                        .foregroundColor(.white)
                        .offset(x: -5, y: -5)
                }
                
                Text(item.description)
                    .padding()
                
                Spacer()
                
            }.navigationTitle(item.name)
        
        
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example)
        }
        
    }
}
