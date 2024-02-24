//


import SwiftUI



struct RatingView: View {
    @Binding var selectedRating: Int
    
    var body: some View {
        HStack {
            ForEach(1..<4) { index in
                Button(action: { selectedRating = index }) {
                    Image(index <= selectedRating ? "star.fill" : "star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                }
            }
        }
    }
}

#Preview {
    RatingView(selectedRating: .constant(1))
}
