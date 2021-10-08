//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by marco rodriguez on 08/10/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - Properties
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail Bottom Part
            VStack(alignment: .center, spacing: 0, content: {
            //Ratings + Sizes
            RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 15)
                
            //Description
                ScrollView(.vertical,showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: Scroll
                
            //Quantity + Favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
            //Add to car
                AddToCartDetailView()
                    .padding(.bottom, 24)
                
            })//: VStack
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
            
            
        }) //: Vstack
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
            ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .previewDevice("iPhone 11")
    }
}
