//
//   AnimationTimingBut.swift
//  Test01
//
//  Created by Usermacmini1 on 23/08/23.
//

import SwiftUI


struct _AnimationTimingBut: View {
    
    @State var isAnimationg:Bool = false
    
    var body: some View {
        
        VStack{
            Button("Button") {
                isAnimationg.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimationg ? 50 :300, height: 100)
        }
        
        
    }
}

struct _AnimationTimingBut_Previews: PreviewProvider {
    static var previews: some View {
        _AnimationTimingBut()
    }
}
