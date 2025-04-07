//
//  ListLoop.swift
//  WarmUp
//
//  Created by 이로운 on 4/7/25.
//

import SwiftUI

struct ListLoop: View {
    let arr: [String] = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(arr, id: \.self) { item in
                    Text(item)
                }
            }
            .navigationTitle("Fruits List")
        }
    }
}

#Preview {
    ListLoop()
}
