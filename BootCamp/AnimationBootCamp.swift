//
//  AnimationBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isAnimated : Bool = false
    
    var body: some View {
    
        VStack(spacing: 20){
            Button("Button"){
               // withAnimation(.default.delay(2.0)){
                withAnimation(
                    .default
                        .repeatForever(autoreverses: true)
                        .speed(0.5)
                        
                ){
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? Color.green : Color.yellow)
                .frame(width: isAnimated ? 100: 300,height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y:isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
