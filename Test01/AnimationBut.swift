//
//  AnimationBut.swift
//  Test01
//
//  Created by Usermacmini1 on 23/08/23.
//

import SwiftUI

struct AnimationBut: View {
    
    @State var isAnimating = false
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 12)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.linear, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.easeInOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.easeOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.7,
                    blendDuration: 0.9
                ),
                           value: isAnimating)
            
            RoundedRectangle(cornerRadius: 12)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.easeIn, value: isAnimating)
        }
    }
}

struct AnimationBut_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBut()
    }
}
