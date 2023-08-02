//
//  ConditionalBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    @State var showCircle : Bool = false
    @State var showRectangle : Bool = false
    @State var isLoading : Bool = false
    
    var body: some View {
        VStack(spacing:20){
            
            Button("IS Loading: \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }else {
                
            }
            
            Button("Cirlc Button : \(showCircle.description)"){
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)"){
                showRectangle.toggle()
            }
            
            
            if showCircle {
                Circle()
                    .frame(width: 100,height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100,height: 100)
            }
            
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100,height: 100)
            }
            
//            else if showRectangle {
//                Rectangle()
//                    .frame(width: 100,height: 100)
//            }
//            else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100,height: 100)
//            }
           
          Spacer()
        }
    }
}

struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}
