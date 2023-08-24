//
//  SheetsBut.swift
//  Test01
//
//  Created by Usermacmini1 on 24/08/23.
//

import SwiftUI

struct SheetsBut: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            Button {
                
                showSheet.toggle()
                
            } label: {
                
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.green.cornerRadius(8))
            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.green.cornerRadius(8))
            }
        
        }
    }
}

struct SheetsBut_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBut()
    }
}
