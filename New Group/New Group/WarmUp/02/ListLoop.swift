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
    
    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "DoubleKiwi", price: 4000),
        Fruit(name: "DoubleKiwi", matchFruitName: "ElderBerry", price: 2400),
        Fruit(name: "ElderBerry", matchFruitName: "DoubleKiwi", price: 8000),
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    // 텍스트필드에 입력되면 $fruitName이 변하면서 동시에 위의 fruitName 변수도 변하길 바라기 때문에 바인딩
                    TextField("insert fruit name", text: $fruitName)
                    
                    Button {
                        // 이게 입력되면 새로운 배열을 추가해서 배열을 다시 보여줘야 하기 때문에 state
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    } label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                }
                .padding()
                
                List {
                    ForEach(favoriteFruits, id: \.self) { item in
                        VStack(alignment: .leading) {
                            Text("name : \(item.name)")
                            Text("matchFruitName : \(item.matchFruitName)")
                            Text("price : \(item.price)")
                        }
                    }.onDelete { IndexSet in
                        favoriteFruits.remove(atOffsets: IndexSet) // 기본 제공 기능 사용
                    }
                }
                .navigationTitle("Fruits List")
            }
        }
    }
}

#Preview {
    ListLoop()
}
