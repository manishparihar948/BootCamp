//
//  PopOverBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct PopOverBootCamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button"){
                    showNewScreen.toggle()
                }
              
            }
            .font(.largeTitle)
            Spacer()
        }
        
        // METHOD 1 - Sheet
//        .sheet(isPresented: $showNewScreen, content: {
//            NewScreen()
//        })
        // METHOD 2 - Transistion
//        ZStack {
//            if showNewScreen {
//                NewScreen(showNewScreen: $showNewScreen)
//                    .padding(.top,100)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring(), value: 1)
//            }
//        }.zIndex(2.0)
        // METHOD 3 - Animation Offset
        NewScreen(showNewScreen: $showNewScreen)
            .padding(.top,100)
            .offset(y:showNewScreen ? 0: UIScreen.main.bounds.height)
            .animation(.spring(), value: 1.0)
        
    }
}

struct NewScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(
                action: {
//                    presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            )
        }
    }
}


struct PopOverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootCamp()
    }
}
