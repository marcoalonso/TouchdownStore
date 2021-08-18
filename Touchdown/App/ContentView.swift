//
//  ContentView.swift
//  Touchdown
//
//  Created by marco rodriguez on 18/08/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: -Properties
    
    //MARK: -Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.25), radius: 8, x: 0, y: 5)
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }//: Vstack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: -Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
