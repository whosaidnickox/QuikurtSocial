
import SwiftUI
import Lottie

struct LoadinVius: View {
    @State var gouws: Bool = false
    var body: some View {
        ZStack {
            Image("baslbukgi")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MenikenView(), isActive: $gouws)
            VStack {
                LottieView(animation: .named("attebzs"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 160, height: 160)
                Image("infsw")
            }
        }
        .pokajukaknadoobhoditi()
        .onAppear() { DispatchQueue.main.asyncAfter(deadline: .now() + 6.555) {
            let wertasz = UIImpactFeedbackGenerator(style: .rigid)
            wertasz.impactOccurred()
            self.gouws = true
        }}
    }
}
