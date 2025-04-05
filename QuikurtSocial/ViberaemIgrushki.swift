
import SwiftUI


struct ViberaemIgrushki: View {
    @State var number: Int = 1
    var body: some View {
        ZStack {
            Image("baslbukgi")
                .resizable()
                .ignoresSafeArea()
            
            HStack {
                Button {
                    let sqsz = UIImpactFeedbackGenerator(style: .rigid)
                    sqsz.impactOccurred()
                    withAnimation {
                        if number == 1 {
                            number = 3
                        } else {
                            number -= 1
                        }
                    }
                  
                } label: {
                    Image("nazt")
                }

                TabView(selection: $number) {
                    NavigationLink {
                        TrecksIgrnwshk(anmg: "ubkjbaivws", igruleaks: "")
                    } label: {
                        Image("orbnkan")
                    }
                    .tag(1)
                    NavigationLink {
                        TrecksIgrnwshk(anmg: "prigucenkimiac", igruleaks: "")
                    } label: {
                        Image("pbwre")
                    }
                    .tag(2)
                    
                    NavigationLink {
                        TrecksIgrnwshk(anmg: "cisqzbd", igruleaks: "")
                    } label: {
                        Image("btksa")
                    }
                    .tag(3)
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .ignoresSafeArea()
                .animation(.easeOut(duration: 0.6), value: number)
                Button {
                    let sqsz = UIImpactFeedbackGenerator(style: .rigid)
                    sqsz.impactOccurred()
                    withAnimation {
                        if number == 3 {
                            number = 1
                        } else {
                            number += 1
                        }
                    }
                  
                } label: {
                    Image("dalw")
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: PoshliNazadRodnoy())
    }
}
