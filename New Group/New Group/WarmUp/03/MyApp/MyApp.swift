//
//  MyApp.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        MainTabView()
        .sheet(isPresented: $showModal, content: {
            TabView {
                OnBoardingSample(onBoardingTitle: "온보딩1", backgroundColor: .blue, showButton: false, showModal: $showModal)
                OnBoardingSample(onBoardingTitle: "온보딩2", backgroundColor: .green, showButton: false, showModal: $showModal)
                OnBoardingSample(onBoardingTitle: "온보딩3", backgroundColor: .pink, showButton: true, showModal: $showModal)
            }
            .tabViewStyle(.page)
        })
        .onAppear {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
