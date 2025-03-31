

import SwiftUI


struct PoshliNazadRodnoy: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            AppDelegate.numojetpravinevsempisani = .landscape
            self.dismiss()
        } label: {
            Image("anukanadz")
        }

    }
}
extension View {
    func pokajukaknadoobhoditi() -> some View {
        self.modifier(VotrebyataPopaliVinaMenea())
    }
}
