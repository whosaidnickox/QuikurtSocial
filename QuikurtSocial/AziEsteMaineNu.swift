
import SwiftUI


struct AziEsteMaineNu: View {
    @State var spqos: Bool = false
    var body: some View {
        ZStack {
            Image("baslbukgi")
                .resizable()
                .ignoresSafeArea()
            
            Image("praviliush")
                .resizable()
                .scaledToFit()
                .padding(20)
                .offset(y: spqos ? 0 : -UIScreen.main.bounds.height)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: PoshliNazadRodnoy())
        .onAppear() {
            withAnimation(Animation.bouncy.delay(0.25)) {
                self.spqos = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                let sqerzx = UIImpactFeedbackGenerator(style: .heavy)
                sqerzx.impactOccurred()
            }
        }
    }
}
