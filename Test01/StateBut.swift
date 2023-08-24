//
//  State.swift
//  Test01
//
//  Created by Usermacmini1 on 21/08/23.
//

import SwiftUI

struct StateBut: View {
    
    @State var backgroundColor = Color.green
    @State var count = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 16){
                
                Text("Title")
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 8){
                    
                    Button {
                        backgroundColor = Color.red
                        count += 1
                    } label: {
                        Text("Button 1" .uppercased())
                            .font(.caption)
                            .bold()
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Capsule()
                                    .stroke()
                            )
                            
                    }
                    Button {
                        backgroundColor = Color.red
                        count -= 1
                    } label: {
                        Text("Button 2" .uppercased())
                            .font(.caption)
                            .bold()
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Capsule()
                                    .stroke()
                            )
                            
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct State_Previews: PreviewProvider {
    static var previews: some View {
        StateBut()
    }
}
