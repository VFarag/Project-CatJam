//
//  HistoryView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            VStack {
                Text("My Jams")
                    .foregroundColor(.white)
                    .font(.largeTitle).padding(.top, 50)
                ScrollView {
                    VStack {
                        ForEach((1...10), id: \.self) {
                            _ in HistoryCell().padding(.top, 10)
                        }
                    }
                }.padding(.top, 50).padding(.bottom, 50)
            }
        }
    }
}
