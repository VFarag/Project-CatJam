//
//  SearchView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI
import ShazamKit

struct SearchView: View {
    //@StateObject private var viewModel: SearchViewModel = .init()
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.black.ignoresSafeArea()
                VStack (alignment: .center, spacing: 16, content: {
                    Text("CAT JAM")
                        .foregroundColor(Color(red: 0.94, green: 0.36, blue: 0.33))
                        .bold()
                        .font(.system(size: 36))
                        .padding(.bottom, 5)
                    
                    Text("Searching ...")
                        .foregroundColor(.white)
                        .padding(.bottom, 75)
                    
                    ZStack {
                        Image("catjamlogo_white")
                            .scaledToFill().frame(width: 200, height: 200)
                        
                        GifImage("soundwave").frame(width: 400, height: 400).scaledToFill()
                    }.padding(.bottom, 0)
                    
                })
                
            }/*
              .onAppear(perform:
                startJamming
            )*/
        }

    }
/*
    @ViewBuilder
    var content: some View {
        if viewModel.matching {
            //ProgressView("Matching...")
            ScanView()
        }
        else {
            VStack(spacing: 32) {
                Button(action: startJamming) {
                    Text("Shazam")
                        .padding()
                }
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
        }
    }
    
    func startJamming() {
        viewModel.start()
    }
 */
}

