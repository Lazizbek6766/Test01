//
//  ExtractSubviewsBut.swift
//  Test01
//
//  Created by Usermacmini1 on 21/08/23.
//

import SwiftUI

struct ExtractSubviewsBut: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack(spacing: 8) {
            MyView(title: "Apelsin", count: 2, color: .black)
            MyView(title: "Aple", count: 3, color: .red)
            MyView(title: "Banans", count: 4, color: .yellow)
            MyView(title: "Kivi", count: 5, color: .green)
        }
    }
}


struct ExtractSubviewsBut_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBut()
    }
}

struct MyView: View{
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View{
        VStack{
            Text("\(count)")
            Text(title)
                
        }
        .padding()
        .foregroundColor(.white)
        .background(color)
        .cornerRadius(12)
    }
}
