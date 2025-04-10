//
//  MyTab.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        // 라벨같은게 없어도 이미 보이지않는 버튼이 구현이 되어 있음 하지만 라벨로 ux//ui를 개선하는 것
        TabView {
            TabDetail() // 여기가 제목이 아니라 Label에서 제목을 컨트롤 하는것임 여긴 이쪽 뷰로 간다는 것
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail2()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            TabDetail3()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always)) // 아래쪽에 스와이프 처럼 인덱스 넣어줌
    }
}

#Preview {
    MyTab()
}
