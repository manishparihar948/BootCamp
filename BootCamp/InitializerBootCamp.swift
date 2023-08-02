//
//  InitializerBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 25.07.23.
//

import SwiftUI

struct InitializerBootCamp: View {
    
    let backgroundColor: Color
    let count : Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
            
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        
        VStack(spacing:10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}

struct InitializerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootCamp(count: 100, fruit: .orange)
            InitializerBootCamp(count: 46, fruit: .apple)

        }
    }
}
