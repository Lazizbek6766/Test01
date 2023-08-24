//
//  TransitionBut.swift
//  Test01
//
//  Created by Usermacmini1 on 24/08/23.
//

import SwiftUI

struct TransitionBut: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                    //.transition(.move(edge: .bottom)) // .top .loading
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    //.transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
                    .animation(.easeInOut)
            }
          
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBut_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBut()
    }
}
