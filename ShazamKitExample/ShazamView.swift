//
//  ScanView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI
import ShazamKit

extension SHMatchedMediaItem: Identifiable {
    
    public var id: String {
        shazamID ?? ""
    }
}

struct ShazamView: View {

    @StateObject private var viewModel: SearchViewModel = .init()

    @State public var history: History
    @State private var selectedTab = 0

    var body: some View {
        
        //ZStack {
        if (viewModel.mediaItem == nil) {
            content
        } else {
            SearchResultView(viewModel: viewModel, mediaItem: viewModel.mediaItem, history: history)
            /*NavigationView {
             SearchResultView(mediaItem: viewModel.mediaItem)
             }.navigationBarBackButtonHidden(true)
             */
        }
        //}.onAppear {
        //viewModel.mediaItem = .init()
        //}
    }

    @ViewBuilder
    var content: some View {
        if viewModel.matching {
            SearchView()
        }
        else {
            VStack() {
                ZStack {
                    Color.black.ignoresSafeArea()
                    VStack (alignment: .center, spacing: 16, content: {
                        Text("CAT JAM")
                            .foregroundColor(Color(red: 0.94, green: 0.36, blue: 0.33))
                            .bold()
                            .font(.system(size: 36))
                            .padding(.bottom, 5)
                        //.font(.custom("Chalkboard", size: 30))

                        
                        Text("Cliquez pour Cat Jammer")
                            .foregroundColor(.white)
                            .padding(.bottom, 100)
                        
                        Button(action: shazam) {
                            Image("catjamlogo_white")
                                .scaledToFill().frame(width: 200, height: 200)
                                .padding(.bottom, 50)
                            
                            /*NavigationLink(destination: SearchView(), label: {
                                Image("catjamlogo_white")
                                    .scaledToFill().frame(width: 200, height: 200)
                                    .padding(.bottom, 100)
                            }
                                           
                            ).navigationBarBackButtonHidden(true)*/
                        }
                    })
                }
            }.navigationBarBackButtonHidden(true)
        }
    }

    func shazam() {
        viewModel.start()
    }
}
