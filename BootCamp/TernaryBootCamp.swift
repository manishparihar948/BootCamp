//
//  TernaryBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct TernaryBootCamp: View {
    @State var isStartingState : Bool = false
    
    var body: some View {
        VStack(){
            Button("Button : \(isStartingState.description)"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                // This is Ternary Operator :
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 100 : 200,height: isStartingState ? 100 : 200)
            
            Spacer()
        }
    }
}

struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}
