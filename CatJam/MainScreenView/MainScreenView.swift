//
//  MainScreenView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct MainScreenView: View {
    let systemIconPlay = UIImage(systemName: "play.cirle.fill")?.withTintColor(.white)

    var body: some View {
        NavigationView {
            TabView {
                ScanView()
                .tabItem {
                    Text("Salut").foregroundColor(.white)
                    Label("Scan", systemImage: "music.quarternote.3")
                }

                HistoryView()
                .tabItem {
                    Label("Récents", systemImage: "music.note.list")
                }

            }
            .tabViewStyle(backgroundColor: .black,
                          itemColor: .white/*.opacity(0.95)*/,
                          selectedItemColor: .red
            /*badgeColor: .green*/)
            //.accentColor(.red)

            /**/
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
