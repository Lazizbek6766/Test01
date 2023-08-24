//
//  ExtractingFunctionsAndSubviews.swift
//  Test01
//
//  Created by Usermacmini1 on 21/08/23.
//

import SwiftUI

struct ExtractingFunctionsAndSubviews: View {
    
    @State var backgroundColor = Color.pink
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            conyentLayer
          
        }
    }
    
    var conyentLayer: some View{
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                
                buttonpressed()
                
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }

        }
    }
    
    func buttonpressed(){
        
        backgroundColor = .yellow
    }
}

struct ExtractingFunctionsAndSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunctionsAndSubviews()
    }
}
