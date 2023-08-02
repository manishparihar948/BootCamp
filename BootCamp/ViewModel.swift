//
//  ViewModel.swift
//  BootCamp
//
//  Created by Manish Parihar on 27.07.23.
//

import SwiftUI

// Model
struct FruitModel: Identifiable {
    let id:String = UUID().uuidString
    let name:String
    let count: Int
}

// ViewModel
class FruitViewModel: ObservableObject {
//  Published wrapper notifiy something you might have to change
    @Published  var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // This init is avoiding retrieving data multiple times in same screen
    // getFruits only first time when we created
    init() {
        getFruits()
    }
    
    func getFruits() {
         let fruit1 =  FruitModel(name: "apple", count: 5)
         let fruit2 =  FruitModel(name: "mango", count:15)
         let fruit3 =  FruitModel(name: "grapes", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline:.now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

// View
struct ViewModel: View {
    
// @State var fruitArray: [FruitModel] = []
// @ObservedObject This might be changing

    // @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
// @StateObject is same as @ObservedObject except basically if Main view reloads or renders @StateObject will persist, it will not refresh our fruitViewModel object.
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
//  @StateObject -> Use this on Creation / Init
//  @ObservedObject -> Use this for SubViews
    
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) {fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text("\(fruit.name)")
                                .font(.headline)
                                .bold()
                        }
                    }.onDelete(perform:fruitViewModel.deleteFruit)
                }
                
                
                
            }.listStyle(GroupedListStyle())
                .navigationTitle("Fruit lists")
                .navigationBarItems(trailing:
                            NavigationLink(
                                destination:RandomScreen(fruitViewModel:fruitViewModel),
                                label: {
                                    Image(systemName: "arrow.right")
                                        .font(.title)
                                })
                            )
                /*
                .onAppear {
                    // Becaue of .onAppears the data is repeating again, and onAppear get calls every time Fruit lists screen get called
                    fruitViewModel.getFruits()
                }
                */
        }
    }
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            /*
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Go Back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            })
             */
            VStack {
                ForEach(fruitViewModel.fruitArray) {fruit in
                    Text(fruit.name)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}
