//
//  HistoryCell.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct HistoryCell: View {
    @StateObject private var viewModel: SearchViewModel = .init()
    
    
    var body: some View {
        let mediaItem = viewModel.mediaItem
        ZStack {
            Color(.white)
            HStack {
                AsyncImage(url: mediaItem?.artworkURL) { phase in
                    if let image = phase.image {
                        image.resizable().scaledToFill()
                        
                    }
                }.frame(width: 50, height: 50)
                
                VStack {
                    Text(mediaItem?.title ?? "Titre non trouvé").foregroundColor(.black)
                    Text(mediaItem?.artist ?? "Artiste non trouvé").foregroundColor(.black)
                    Text(mediaItem?.subtitle ?? "Album (2023)").foregroundColor(.black)
                }
            }
        }.frame(width: 340, height: 80)
    }
}


