//
//  SearchResultView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct SearchResultView: View {
    //@Environment(\.presentationMode) var presentation
        
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            VStack {
                Text("CAT JAM").font(.largeTitle).foregroundColor(.white)
                Text("Jam trouvé").font(.largeTitle).foregroundColor(.white).padding(.bottom, 80)
                Text("Musique").font(.largeTitle).foregroundColor(.white)
                Image("catjamlogo_white").resizable().frame(width: 300, height: 300)
                Text("Artistes").font(.largeTitle).foregroundColor(.white).italic()
                /*
                HStack {
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                        
                    }) {
                            Label("Home", systemImage: "music.note.house")
                        }
                    NavigationLink(destination: HistoryView()) {
                        Label("Récents", systemImage: "music.note.list")
                    }
                }
                 */
                HStack {
                    NavigationLink(destination: MainScreenView(), label: {
                        Text("Retour").font(.largeTitle).foregroundColor(.white)
                    })
                    
                    NavigationLink(destination: HistoryView(), label: {
                        Text("Récents Jams").font(.largeTitle).foregroundColor(.white)
                    })
                }

                
            }
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
