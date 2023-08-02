//
//  EnvironmentObjectBootCamp.swift
//  BootCamp
//
//  Created by Manish Parihar on 27.07.23.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject
class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData() {
      
        self.dataArray.append(contentsOf: ["iPhone","iPad","iWatch","iMac"])
    }
}


struct EnvironmentObjectBootCamp: View {
    
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    
                    // Also we delte viewModel form DetailView
                   // NavigationLink(destination:DetailView(selectedItem: item, viewModel: viewModel),
                    NavigationLink(destination:DetailView(selectedItem: item),
                    label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel )
    }
}

struct DetailView: View {
    
    let selectedItem: String
    // We comment below line of code because we hav creating environmentobject in first view
    // @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            NavigationLink(
                // We will remove viewModel:viewModel because we have @EnvironmentObject pass in final view
                //destination: FinalView(viewModel: viewModel), label: {
                destination: FinalView(), label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.green)
                        .cornerRadius(30)
                }
            )
        }
    }
}

struct FinalView: View {
    // @ObservedObject var viewModel: EnvironmentViewModel
    // And we comment @ObservedObject here because we already have environment set in first view so we going to call
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing:20) {
                    ForEach(viewModel.dataArray, id:\.self) {item in
                        Text(item)
                    }
                }.foregroundColor(.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootCamp()
    }
}
