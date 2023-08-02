//
//  TransitionBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct TransitionBootCamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button"){
                    showView.toggle()
                }
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        //.transition(.scale.animation(.easeIn))
                        .transition(.asymmetric(insertion: AnyTransition.move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)
                        ))
                        //.animation(.easeOut, value: 1)
                }
              
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        
      
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
