//
//  ExtractFunctions.swift
//  BootCamp
//
//  Created by Manish Parihar on 27.07.23.
//

import SwiftUI

struct ExtractFunctions: View {
    
    // State telling the view to watch the state of the variable might change
      @State var backgroundColor : Color = Color.yellow
      @State var myTitle : String = "My Title"
      @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
        
            // content layer
           contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack(spacing: 20){
            Text("Title")
                .font(.title)
            Text("Count \(count)")
                .font(.headline)
                .underline()
            
            HStack(spacing:20) {
                Button(action: {
                    buttonPressed1()
                }, label: {
                    Text("Button 1")
                })
                
                Button(action: {
                    buttonPressed2()
                }, label: {
                    Text("Button 2")
                })
            }
            .foregroundColor(.white)
        }.foregroundColor(.white)
    }
    
    func buttonPressed1() {
        backgroundColor = .pink
        myTitle = "Button 1 pressed"
        count += 1
    }
    
    func buttonPressed2() {
        backgroundColor = .indigo
        myTitle = "Button 2 pressed"
        count -= 1
    }
}

struct ExtractFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctions()
    }
}
