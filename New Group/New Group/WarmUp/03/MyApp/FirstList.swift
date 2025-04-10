//
//  FirstList.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct subpageItems: Identifiable {
    let id = UUID()
    let title: String
    let destinationText: String
}

struct FirstList: View {
    
    let subPages: [subpageItems] = [
        subpageItems(title: "첫번째 하위페이지 입니다", destinationText: "첫번째 하위페이지"),
        subpageItems(title: "두번째 하위페이지 입니다", destinationText: "두번째 하위페이지"),
        subpageItems(title: "세번째 하위페이지 입니다", destinationText: "세번째 하위페이지"),
        subpageItems(title: "네번째 하위페이지 입니다", destinationText: "네번째 하위페이지")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(subPages) { page in
                    NavigationLink {
                        Text(page.title)
                    } label: {
                        Text(page.destinationText)
                    }
                }
            }
            .navigationTitle("리스트")
        }
    }
}

#Preview {
    FirstList()
}
