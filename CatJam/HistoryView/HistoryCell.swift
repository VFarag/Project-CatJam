//
//  HistoryCell.swift
//  CatJam
//
//  Created by Véronique FARAG on 14/06/2023.
//

import SwiftUI

struct HistoryCell: View {
    var body: some View {
        ZStack {
            Color(.white)
            HStack {
                Image("catjamlogo_white").resizable().scaledToFill().frame(width: 50, height: 50)
                VStack {
                    Text("Music").foregroundColor(.black)
                    Text("Artistes").foregroundColor(.black)
                    Text("Album (2023)").foregroundColor(.black)
                }
            }
        }.frame(width: 340, height: 80)
    }
}

struct HistoryCell_Previews: PreviewProvider {
    static var previews: some View {
        HistoryCell()
    }
}
