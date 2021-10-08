//
//  TitleView.swift
//  Touchdown
//
//  Created by marco rodriguez on 08/10/21.
//

import SwiftUI

struct TitleView: View {
    
    //MARK: - PREVIEW
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }// HStack
        .padding(.horizontal)
        .padding(.top, 16)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
