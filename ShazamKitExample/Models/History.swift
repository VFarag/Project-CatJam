//
//  History.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import Foundation
import ShazamKit

class History: ObservableObject {
    @Published var musicArray: [SHMatchedMediaItem]
    
    init() {
        self.musicArray = [SHMatchedMediaItem]()
    }
    
    func push (newMusic: SHMatchedMediaItem) {
        self.musicArray.append(newMusic)
    }
    
    //getmusicinfo
}
