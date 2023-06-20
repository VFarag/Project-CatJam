//
//  ShazamKitExampleApp.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

@main
struct ShazamKitExampleApp: App {
    @StateObject public var history: History = .init()
    
    var body: some Scene {
        WindowGroup {
            ShazamView(history: history)
        }
    }
}
