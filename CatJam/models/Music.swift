//
//  Music.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import Foundation

class Music {
    var id: UUID
    var title: String
    var artist: String
    var album: String
    var releaseDate: Date
    var image: URL
    var songUrl: URL
    var genreNames: [String]
    
    init(id: UUID, title: String, artist: String, album: String, releaseDate: Date, image: URL, songUrl: URL, genreNames: [String]) {
        self.id = id
        self.title = title
        self.artist = artist
        self.album = album
        self.releaseDate = releaseDate
        self.image = image
        self.songUrl = songUrl
        self.genreNames = genreNames
    }
    
    /*convenience init(json: String) {
        self.init(json)
    } */
}
