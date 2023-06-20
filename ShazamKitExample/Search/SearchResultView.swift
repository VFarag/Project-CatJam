//
//  SearchResultView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI
import ShazamKit

struct SearchResultView: View {
    @Environment(\.presentationMode) var presentation
    
    @State var viewModel: SearchViewModel
    @State var mediaItem: SHMatchedMediaItem?
    @State var history: History
    
    @State var isAdded: Bool = false

    var body: some View {
        NavigationView{
            ZStack {
                Color(.black).ignoresSafeArea()
                VStack {
                    Text("CAT JAM").foregroundColor(Color(red: 0.94, green: 0.36, blue: 0.33))
                        .bold()
                        .font(.system(size: 36))
                        .padding(.bottom, 5)
                    Text("Jam trouvé").font(.largeTitle).foregroundColor(.white).padding(.bottom, 80)
                    Text(mediaItem?.title ?? "Musique").font(.largeTitle).foregroundColor(.white).bold()
                        .font(.system(size: 12))
                    AsyncImage(url: mediaItem?.artworkURL) { phase in
                        if let image = phase.image {
                            image.resizable()
                        }
                    }.frame(width: 150, height: 150)
                    
                    Text(mediaItem?.artist ?? "Artiste non trouvé").font(.largeTitle).foregroundColor(.white).italic()
                    HStack {
                        Button(action: { mediaItem = nil; viewModel.mediaItem = nil; ShazamView(history: history) })
                            {
                                Label("Home", systemImage: "music.note.house")
                            }
                        NavigationLink(destination: HistoryView(history: history)) {
                            Label("Récents", systemImage: "music.note.list")
                        }
                    }.padding(.bottom)
                }

            }.onAppear {
                if (mediaItem != nil && !isAdded) {
                    history.push(newMusic: mediaItem!)
                    isAdded = true
                    print(history.musicArray)
                }
            }
            
        }
    }
}
