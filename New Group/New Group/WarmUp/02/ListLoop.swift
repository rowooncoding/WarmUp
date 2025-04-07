//
//  ListLoop.swift
//  WarmUp
//
//  Created by 이로운 on 4/7/25.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    let arr: [String] = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
    
    var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "DoubleKiwi", price: 4000),
        Fruit(name: "DoubleKiwi", matchFruitName: "ElderBerry", price: 2400),
        Fruit(name: "ElderBerry", matchFruitName: "DoubleKiwi", price: 8000),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favoriteFruits, id: \.self) { item in
                    VStack(alignment: .leading) {
                        Text("name : \(item.name)")
                        Text("matchFruitName : \(item.matchFruitName)")
                        Text("price : \(item.price)")
                    }
                }
            }
            .navigationTitle("Fruits List")
        }
    }
}

#Preview {
    ListLoop()
}
