//
//  AnimationTimingBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    @State var isAnimating : Bool = false
    let timing : Double = 10.0
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width:isAnimating ? 350 : 50,height: 100)
                .animation(.spring(response: 3.0,dampingFraction: 1.0,blendDuration:1.0), value: animationAmount)
//                .animation(.linear(duration: timing), value: animationAmount)
            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,height: 100)
//                .animation(.easeIn(duration: timing), value: animationAmount)
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,height: 100)
//                .animation(.easeInOut(duration: timing), value: animationAmount)
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,height: 100)
//                .animation(.easeOut(duration: timing), value: animationAmount)
        }
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}
