//


import SwiftUI

@main
struct AvengerAppApp: App {
    @State private var avengerData = AllAvenger()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(avengerData)
        }
    }
}
