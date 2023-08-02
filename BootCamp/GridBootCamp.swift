//
//  GridBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 25.07.23.
//

import SwiftUI

struct GridBootCamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),

    ]
    
    var body: some View {
        ScrollView{
            
            LazyVGrid(
                        columns: columns,
                        alignment: .center,
                        spacing: 6,
                        pinnedViews:[],
                        content: {
                            ForEach(0..<50){ index in
                                Rectangle()
                                    .frame(height: 150)
                            }
            })
        }
    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}
