//


import SwiftUI

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image("arrow")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    BackButton()
}
