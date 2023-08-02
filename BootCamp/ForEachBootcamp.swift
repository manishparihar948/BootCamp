//
//  ForEachBootcamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 25.07.23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data : [String] = ["HELLO","HI","EVERYONE"]
    let myString: String = "Hello"
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) {index in
                    ScrollView(.horizontal,showsIndicators: false,content: {
                        LazyHStack {
                            ForEach(0..<20) {index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.black)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
        /*
        VStack {
            
            ForEach(data.indices) { index  in
                Text("\(data[index]): \(index)")
            }
            
            /*
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                         .frame(width: 30,height: 30)
                     Text("Hi: \(index)")
                }
            }
             */
        }
         */
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
