//
//  SafeAreaBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 25.07.23.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        
     
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    ForEach(0..<10) {index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            .background(
                Color.red
                    .ignoresSafeArea(edges:.all)
            )
        
        /*
        ZStack {
            // background
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            // foreground
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            //.background(Color.red)
        }
         */
        
    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
