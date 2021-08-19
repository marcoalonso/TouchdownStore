//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by marco rodriguez on 18/08/21.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: -  Properties
    let category: Category
    
    //MARK: -  Body
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6){
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: Hstack
            .padding()
            .background(Color.white.cornerRadius(15))
            .background(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 1))
        })//: Button
    }
}
 
//MARK: -  Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
