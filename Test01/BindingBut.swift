//
//  BindingBut.swift
//  Test01
//
//  Created by Usermacmini1 on 21/08/23.
//

import SwiftUI

struct BindingBut: View {
    
    @State var backgroundColor = Color.blue
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ButtonView(backgroundColor: $backgroundColor)

            
        }
    }
}

struct BindingBut_Previews: PreviewProvider {
    static var previews: some View {
        BindingBut()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        
        VStack(spacing: 8) {
            Button {
                backgroundColor = Color.orange
            } label: {
                Text("Button")
                    .font(.caption)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .padding(.horizontal)
                    .shadow(radius: 12)
                    .background(.green)
                    .cornerRadius(12)
            }
        }
    }
}
