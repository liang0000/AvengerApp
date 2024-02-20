//


import SwiftUI

struct AvengerRow: View {
    var avenger: Avenger
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 30) {
                Image(avenger.imgName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading) {
                    Text(avenger.name)
                        .font(.title2)
                        .padding(.bottom)
                    Text(ratingDescription(for: avenger.rating))
                }
            }
        }
    }
}

#Preview {
    AvengerRow(avenger: Avenger(name: "Hulk", imgName: "hulk", rating: 1))
}

private func ratingDescription(for rating: Int) -> String {
    switch rating {
        case 1:
            return "Normal"
        case 2:
            return "Very Good"
        case 3:
            return "Awesome"
        default:
            return ""
    }
}
