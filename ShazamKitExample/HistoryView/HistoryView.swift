//
//  HistoryView.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct HistoryView: View {
    @State var history: History?
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(.black).ignoresSafeArea()
                VStack {
                    Text("My Jams")
                        .foregroundColor(.white)
                        .font(.largeTitle).padding(.top, 50)
                    ScrollView {
                        VStack {
                            
                            ForEach((0...((history?.musicArray.count ?? 1)-1 )), id: \.self) {
                                musicID in HistoryCell(currItem: history?.musicArray[musicID]).padding(.top, 10)
                            }
                        }
                    }.padding(.top, 50).padding(.bottom, 50)
                }
            }
        }

    }
}
