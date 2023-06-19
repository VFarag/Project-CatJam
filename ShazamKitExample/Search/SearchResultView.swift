//
//  SearchResultView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI
import ShazamKit

struct SearchResultView: View {
    //@Environment(\.presentationMode) var presentation
        
    @State var mediaItem: SHMatchedMediaItem?

    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            VStack {
                Text("CAT JAM").font(.largeTitle).foregroundColor(.white)
                Text("Jam trouvé").font(.largeTitle).foregroundColor(.white).padding(.bottom, 80)
                Text(mediaItem?.title ?? "Musique").font(.largeTitle).foregroundColor(.white)
                    .font(.system(size: 12))
                AsyncImage(url: mediaItem?.artworkURL) { phase in
                    if let image = phase.image {
                        image.resizable()
                    }
                }.frame(width: 150, height: 150)
                
                Text(mediaItem?.artist ?? "Artiste non trouvé").font(.largeTitle).foregroundColor(.white).italic()
                
                
                HStack {
                    NavigationLink(destination: ShazamView(), label: {
                        Text("Retour").font(.largeTitle).foregroundColor(.white)
                    }).navigationBarBackButtonHidden(true)
                    
                    NavigationLink(destination: HistoryView(), label: {
                        Text("Récents Jams").font(.largeTitle).foregroundColor(.white)
                        }).navigationBarBackButtonHidden(true)
                    
                }.padding(.top)
            }
        }.onAppear {
            
        }
    }
}


/*NavigationLink(destination: MainScreenView(), label: {
    Text("Retour").font(.largeTitle).foregroundColor(.white)
})*/
/*
NavigationLink(destination: HistoryView(), label: {
    Text("Récents Jams").font(.largeTitle).foregroundColor(.white)
})
 */

/*
TabView {
    ScanView()
        .tabItem {
            Label("Scan", systemImage: "music.note.house")
        }
    
    HistoryView()
        .tabItem {
            Label("Récents", systemImage: "music.note.list")
        }
}
 */


/*
 HStack {
     NavigationLink(destination: MainScreenView(), label: {
         Text("Retour").font(.largeTitle).foregroundColor(.white)
     })
     
     NavigationLink(destination: HistoryView(), label: {
         Text("Récents Jams").font(.largeTitle).foregroundColor(.white)
     })
 }*/
