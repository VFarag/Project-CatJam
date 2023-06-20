//
//  HistoryCell.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI
import ShazamKit

struct HistoryCell: View {
    @StateObject private var viewModel: SearchViewModel = .init()
    var currItem: SHMatchedMediaItem?
    
    init(currItem: SHMatchedMediaItem?) {
        self.currItem = currItem
    }
    
    var body: some View {
        //let mediaItem = viewModel.mediaItem
        let mediaItem = currItem
        ZStack {
            Color.gray.opacity(0.4) // Couleur de remplissage du rectangle
                .frame(width: 340, height: 80)
                .cornerRadius(10)
                .shadow(color: .black, radius: 5, x: 0, y: 2)

            HStack {
                AsyncImage(url: mediaItem?.artworkURL) { phase in
                    /*if let image = phase.image {
                        image.resizable().scaledToFill()
                    }*/
                    if let image = phase.image {
                        image.resizable().scaledToFill().frame(width: 50, height: 50).cornerRadius(8)
                 }
                }.frame(width: 50, height: 50)
                
                VStack {
                    Text(mediaItem?.title ?? "Titre non trouvé").foregroundColor(.white).font(.headline).fontWeight(.bold) // Gras
                    Text(mediaItem?.artist ?? "Artiste non trouvé").foregroundColor(.white).foregroundColor(.white).font(.subheadline)
                    //Text(mediaItem?.subtitle ?? "Album (2023)").foregroundColor(.white).foregroundColor(.white).font(.caption)
                }
                .padding(.leading, 8) // Ajout d'un padding à gauche pour séparer l'image du texte
            }
        }.frame(width: 340, height: 80)
    }
}


