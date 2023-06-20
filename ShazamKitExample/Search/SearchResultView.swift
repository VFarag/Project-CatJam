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
        
    @State var mediaItem: SHMatchedMediaItem?
    @State var history: History?
    
        

    var body: some View {
        NavigationView{
            ZStack {
                Color(.black).ignoresSafeArea()
                VStack {
                    Text("CAT JAM").font(.largeTitle).foregroundColor(.red).bold()
                    Text("Jam trouvé").font(.largeTitle).foregroundColor(.white).padding(.bottom, 80)
                    Text(mediaItem?.title ?? "Musique").font(.largeTitle).foregroundColor(.gray).bold()
                        .font(.system(size: 12))
                    AsyncImage(url: mediaItem?.artworkURL) { phase in
                        if let image = phase.image {
                            image.resizable()
                        }
                    }.frame(width: 150, height: 150)
                    
                    Text(mediaItem?.artist ?? "Artiste non trouvé").font(.largeTitle).foregroundColor(.white).italic()
                    
                    HStack {
                        Button(action: { self.presentation.wrappedValue.dismiss() })
                            {
                                Label("Home", systemImage: "music.note.house")
                            }
                        NavigationLink(destination: HistoryView(history: history)) {
                            Label("Récents", systemImage: "music.note.list")
                        }
                     
                    }
                }
            }.onAppear {
                if mediaItem != nil {
                    history?.push(newMusic: mediaItem!)
                    print(history?.musicArray[0])
                }
            }
        }

    }
}


/*
HStack {
    NavigationLink(destination: ShazamView(), label: {
        Text("Retour").font(.largeTitle).foregroundColor(.white)
    })//.navigationBarBackButtonHidden(true)
    
    NavigationLink(destination: HistoryView(), label: {
        Text("Récents Jams").font(.largeTitle).foregroundColor(.white)
        })//.navigationBarBackButtonHidden(true)
    
}.padding(.top)
*/
