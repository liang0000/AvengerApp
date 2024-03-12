//


import SwiftUI

@main
struct AvengerApp: App {
    @State private var avengerData = AllAvenger()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(avengerData)
        }
    }
}
