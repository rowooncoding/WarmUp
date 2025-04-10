//
//  Navigation.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일 뷰로 이동하기", "디테일 뷰로 이동하기 2"]
    let descriptions = ["데스티네이션 입니다.", "데스티네이션 입니다2"]
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack { // 네비게이션을 관리하는 컨테이너
            List { // 네비게이션을 리스트식으로 쌓아준다
                
                // 반복문 사용
                ForEach([0,1], id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
                
                
                // 하드코딩
//                NavigationLink { // 실제로 이동하게 만들어준다
//                    Text("데스티네이션")
//                } label: {
//                    Text("디테일뷰로 이동하기2")
//                }
//                
//                NavigationLink {
//                    Text("데스티네이션2")
//                } label: {
//                    Text("디테일뷰로 이동하기")
//                }
            }
            .toolbar { // 툴바 통해서 모달 불러오기 (이것도 쌓이는 형태라서 위로 올라오는 형태임)
                ToolbarItem {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }

                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지")
            })
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
