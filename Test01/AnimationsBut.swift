//
//  AnimationsBut.swift
//  Test01
//
//  Created by Usermacmini1 on 22/08/23.
//

import SwiftUI

struct AnimationsBut: View {
    
    @State var isAnimate = false
    
    var body: some View {
        
        VStack{
          
            Spacer()
            RoundedRectangle(cornerRadius: 12.0)
                .fill(isAnimate ? Color.red : Color.blue)
                .frame(width: 100, height: 100)
            
            Spacer()
            Button("button") {
                withAnimation(.default){
                    isAnimate.toggle()
                }
              
            }
            
        }
    }
}

struct AnimationsBut_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBut()
    }
}
