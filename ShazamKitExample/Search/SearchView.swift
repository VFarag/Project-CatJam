//
//  SearchView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI
import ShazamKit

struct SearchView: View {
    @StateObject private var viewModel: SearchViewModel = .init()
    
    var body: some View {
        /*
         Le Monsieur
        content
            .sheet(item: $viewModel.mediaItem) { mediaItem in
                SearchResultView(mediaItem: mediaItem)
            }
            .alert(isPresented: $viewModel.hasError) {
                Alert(title: Text("Error"), message: Text(viewModel.error?.localizedDescription ?? ""))
            }
        */
        
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
            
            
            
            /*
            .sheet(item: $viewModel.mediaItem) { mediaItem in
                NavigationLink(destination: SearchResultView(mediaItem: mediaItem), label: {
                    Text("Trouvé skip")
                        .font(.largeTitle).foregroundColor(.white)
                })
            }*/
            
            /*if let item = $viewModel.mediaItem { mediaItem in
                NavigationLink(destination: SearchResultView(mediaItem: mediaItem), label: {
                    Text("Trouvé skip")
                        .font(.largeTitle).foregroundColor(.white)
                })
            }*/
            
        }.onAppear(perform:
            startJamming
        )
    }

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
 
}

