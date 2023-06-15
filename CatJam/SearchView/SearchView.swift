//
//  SearchView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct SearchView: View {
    
    
    var body: some View {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack (alignment: .center, spacing: 16, content: {
                    Text("CAT JAM")
                    //.font(.custom("Chalkboard", size: 30))
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    
                    Text("Searching ...")
                        .foregroundColor(.white)
                        .padding(.bottom, 150)
                    
                    ZStack {
                        Image("catjamlogo_white")
                            .scaledToFill().frame(width: 200, height: 200)
                        
                        GifImage("soundwave").frame(width: 400, height: 400).scaledToFill()
                    }.padding(.bottom, 0)
                    
                })
                
                NavigationLink(destination: SearchResultView(), label: {
                    Text("Trouvé skip")
                        .font(.largeTitle).foregroundColor(.white)
                })
            }
        }
}
