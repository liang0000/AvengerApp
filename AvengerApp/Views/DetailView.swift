//


import SwiftUI

struct DetailView: View {
    @Environment(AllAvenger.self) var data
    var avenger: Avenger
    
    var avengerIndex: Int {
        data.avengers.firstIndex(where: { $0.id == avenger.id })!
    }
    
    var body: some View {
        @Bindable var data = data
        
        VStack(alignment: .leading) {
            Image(avenger.imgName)
                .resizable()
                .scaledToFit()
            
            RatingView(selectedRating: $data.avengers[avengerIndex].rating)
        }
    }
}

#Preview {
    let data = AllAvenger()
    
    return DetailView(avenger: data.avengers[0])
        .environment(data)
}
