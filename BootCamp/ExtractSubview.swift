//
//  ExtractSubview.swift
//  BootCamp
//
//  Created by Manish Parihar on 27.07.23.
//

import SwiftUI

struct ExtractSubview: View {
    
    // State telling the view to watch the state of the variable might change
    @State var backgroundColor : Color = Color.yellow
    @State var myTitle : String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        VStack(){
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
            }
                .foregroundColor(.black)
            
        }.foregroundColor(.black)
        
    }
    
    func buttonPressed1() {
        backgroundColor = .pink
        myTitle = "Button 1 pressed"
        count += 1
    }
}

struct ExtractSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubview()
    }
}
