//
//  State.swift
//  BootCamp
//
//  Created by Manish Parihar on 27.07.23.
//

import SwiftUI

struct StateBootCamp: View {
    
  // State telling the view to watch the state of the variable might change
    @State var backgroundColor : Color = Color.green
    @State var myTitle : String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content layer
            VStack(spacing: 20){
                Text("Title")
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing:20) {
                    Button("Button 1") {
                        backgroundColor = .pink
                        myTitle = "Button 1 pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .indigo
                        myTitle = "Button 2 pressed"
                        count -= 1

                    }
                }
                .foregroundColor(.white)
            }.foregroundColor(.white)
        }
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
