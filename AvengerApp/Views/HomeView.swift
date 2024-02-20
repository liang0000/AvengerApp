//


import SwiftUI

struct HomeView: View {
    @Environment(AllAvenger.self) var data
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data.avengers) { avenger in
                    NavigationLink {
                        DetailView(avenger: avenger)
                            .navigationTitle(avenger.name)
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarBackButtonHidden(true)
                            .navigationBarItems(leading: BackButton())
                    } label: {
                        AvengerRow(avenger: avenger)
                    }
                }
            }
            .navigationTitle("Avengers")
        }
    }
}

#Preview {
    HomeView()
        .environment(AllAvenger())
}
