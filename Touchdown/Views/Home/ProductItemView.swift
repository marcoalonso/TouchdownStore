//
//  ProductItemView.swift
//  Touchdown
//
//  Created by marco rodriguez on 08/10/21.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTY
  
    let product: Product
    
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //PHoto
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }//: Vstack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
