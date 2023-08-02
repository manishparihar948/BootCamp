//
//  BindingBootcamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 27.07.23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor : Color = Color.pink
    
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                // For Binding we use Dollar sign $ and connected with parent view
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

// Subview
struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            title = "Show My Color"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.green)
                .cornerRadius(10)
        })
    }
}
