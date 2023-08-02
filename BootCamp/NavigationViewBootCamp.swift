//
//  NavigationViewBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 01.08.23.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hellow World",
                               destination:MyOtherScreen())
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)

        }
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Second Screen")
                .navigationBarBackButtonHidden(true)
            
            NavigationLink("Click here", destination: Text("Third Screen"))
            
        }
    }
}

struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
