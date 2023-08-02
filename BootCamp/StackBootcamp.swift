//
//  StackBootcamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 25.07.23.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350,height: 500,alignment: .center)
            
            VStack{
               Rectangle()
                    .fill(Color.red)
                    .frame(width:150,height: 150)
                
                Rectangle()
                     .fill(Color.blue)
                     .frame(width:130,height: 130)
                
                Rectangle()
                     .fill(Color.green)
                     .frame(width:100,height: 100)
            }
        }
        
        /*
        VStack(alignment: .trailing, spacing: nil,content: {
            Rectangle()
                 .fill(Color.red)
                 .frame(width:200,height: 200)
             
             Rectangle()
                  .fill(Color.blue)
                  .frame(width:150,height: 150)
             
             Rectangle()
                  .fill(Color.green)
                  .frame(width:100,height: 100)
        })
         */
        
        /*
        VStack{
           Rectangle()
                .fill(Color.red)
                .frame(width:100,height: 100)
            
            Rectangle()
                 .fill(Color.blue)
                 .frame(width:100,height: 100)
            
            Rectangle()
                 .fill(Color.green)
                 .frame(width:100,height: 100)
        }
         */
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
    }
}
