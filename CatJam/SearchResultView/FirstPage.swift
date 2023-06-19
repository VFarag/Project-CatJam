//
//  FirstPage.swift
//  CatJam
//
//  Created by Véronique FARAG on 19/06/2023.
//

import SwiftUI

struct FirstPage: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Button("Retour") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}
