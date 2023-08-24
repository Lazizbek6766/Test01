//
//  TernaryBut.swift
//  Test01
//
//  Created by Usermacmini1 on 22/08/23.
//

import SwiftUI

struct TernaryBut: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack(spacing: 12) {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 12 :25)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 300,
                    height: isStartingState ? 100 : 150)
            
            Spacer()
        }
    }
}

struct TernaryBut_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBut()
    }
}
