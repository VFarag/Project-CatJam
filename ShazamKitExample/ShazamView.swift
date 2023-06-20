//
//  Created by Artem Novichkov on 10.06.2021.
//

import SwiftUI
import ShazamKit

extension SHMatchedMediaItem: Identifiable {
    
    public var id: String {
        shazamID ?? ""
    }
}

struct ShazamView: View {

    @StateObject private var viewModel: SearchViewModel = .init()

    @StateObject public var history: History = .init()

    var body: some View {
        //ZStack {
            if (viewModel.mediaItem == nil) {
                content
            } else {
                SearchResultView(mediaItem: viewModel.mediaItem, history: history)
                /*NavigationView {
                    SearchResultView(mediaItem: viewModel.mediaItem)
                }.navigationBarBackButtonHidden(true)
                 */
            }
        //}.onAppear {
            //viewModel.mediaItem = .init()
        //}
    }

    @ViewBuilder
    var content: some View {
        if viewModel.matching {
            SearchView()
        }
        else {
            VStack() {
                ZStack {
                    Color.black.ignoresSafeArea()
                    VStack (alignment: .center, spacing: 16, content: {
                        Text("CAT JAM")
                        //.font(.custom("Chalkboard", size: 30))
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                        
                        
                        Text("Cliquez pour Cat Jammer")
                            .foregroundColor(.white)
                            .padding(.bottom, 250)
                        
                        Button(action: shazam) {
                            NavigationLink(destination: SearchView(), label: {
                            Image("catjamlogo_white")
                                .scaledToFill().frame(width: 200, height: 200)
                                .padding(.bottom, 100)
                            }
                            
                            ).navigationBarBackButtonHidden(true)
                        }
                        
                    })
                }
            }
        }
    }

    func shazam() {
        viewModel.start()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShazamView()
    }
}

