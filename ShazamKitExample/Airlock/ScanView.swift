//
//  ScanView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.ignoresSafeArea()
                VStack (alignment: .center, spacing: 16, content: {
                    Text("CAT JAM")
                    //.font(.custom("Chalkboard", size: 30))
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(.bottom, 10)
                    
                    
                    Text("Cliquez pour Cat Jammer")
                        .foregroundColor(.white)
                        .padding(.bottom, 250)
                    NavigationLink(destination: ShazamView(), label:
                                    {
                        Image("catjamlogo_white")
                            .scaledToFill().frame(width: 200, height: 200)
                            .padding(.bottom, 100)
                        
                    })//.navigationBarBackButtonHidden(true)
                    
                    
                })
            }
            
        }

    }
}
