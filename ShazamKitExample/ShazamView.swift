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
                TabView(selection: $selectedTab) {
                    // Premier onglet : Scan
                    SearchView()
                        .tabItem {
                            Label("Scan", systemImage: "music.quarternote.3")
                        }
                        .tag(0)

                    // Deuxième onglet : Récents
                    HistoryView()
                        .tabItem {
                            Label("Récents", systemImage: "music.note.list")
                        }
                        .tag(1)
                }
                .accentColor(.red)
                .navigationBarBackButtonHidden(true)
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
                        //.font(.custom("Chalkboard", size: 30))
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                        
                        
                        Text("Cliquez pour Cat Jammer")
                            .foregroundColor(.white)
                            .padding(.bottom, 250)
                        
                        Button(action: shazam) {
                            Image("catjamlogo_white")
                                .scaledToFill().frame(width: 200, height: 200)
                                .padding(.bottom, 100)
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
