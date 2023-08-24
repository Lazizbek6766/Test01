//
//  ContentView.swift
//  Test01
//
//  Created by Usermacmini1 on 21/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var title: String = "Lazizbek"
    
    var body: some View {
        VStack(spacing: 8){
            Text(title)
            
            Button("Button") {
                self.title = "Turayev Lazizbek"
            }
            Button(action: {
                self.title = "Turayev Lazizbek 2"
            }, label: {
                Text("Button 2")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(16)
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            Button {
                self.title = "Turayev Lazizbek 3"
            } label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 60, height: 60)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title2)
                            .foregroundColor(Color.red)
                    )
            }

            Button {
                self.title = "Turayev Lazizbek 3"
                
            } label: {
                Text("Button 3".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
