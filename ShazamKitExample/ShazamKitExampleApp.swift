//
//  Created by Artem Novichkov on 10.06.2021.
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
