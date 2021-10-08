//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by marco rodriguez on 08/10/21.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 7, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
                
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(width: 38)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: { }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            
            
        })//: HStack
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
