//
//  MainTabView.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct tabItemInfo: Identifiable {
    let id = UUID()
    let title: String
    let systemImage: String
    let view: AnyView
}

struct MainTabView: View {
    
    let tabItems: [tabItemInfo] = [
        tabItemInfo(title: "first", systemImage: "tray.and.arrow.down.fill", view: AnyView(FirstList())),
        tabItemInfo(title: "second", systemImage: "tray.and.arrow.down.fill", view: AnyView(Text("second view"))),
        tabItemInfo(title: "third", systemImage: "tray.and.arrow.down.fill", view: AnyView(Text("third view"))),
        tabItemInfo(title: "fourth", systemImage: "tray.and.arrow.down.fill", view: AnyView(Text("fourth view")))
    ]
    
    var body: some View {
        TabView {
            ForEach(tabItems) { item in
                item.view
                    .tabItem {
                        Label(item.title, systemImage: item.systemImage)
                    }
            }
        }
    }
}

#Preview {
    MainTabView()
}
