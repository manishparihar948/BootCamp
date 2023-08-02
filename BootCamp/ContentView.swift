//
//  ContentView.swift
//  BootCamp
//
//  Created by Manish Parihar on 25.07.23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       /*
        Text("Hello, world!")
           // .background(Color.red)
           // LinearGradient(gradient:Gradient(colors: [Color.red, Color.blue]), startPoint:.leading,endPoint:.trailing)
        .background(
            Circle()
                .fill(Color.blue)
                .frame(width: 100,height: 100,alignment: .center)
        )
    
    .background(
        Circle()
            .fill(Color.red)
            .frame(width: 120,height: 120,alignment: .center)
    )
    .padding()
        
        Rectangle()
            .frame(width: 100,height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50,height: 50)
                , alignment: .center
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150,height: 150)
                , alignment: .center
            )
        */
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            Spacer()

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
