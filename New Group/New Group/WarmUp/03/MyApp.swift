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
        TabView {
            
            // 네비게이션
            NavigationStack {
                List {
                    NavigationLink {
                        Text("첫번째 하위페이지 입니다.")
                    } label: {
                        Text("첫번째 하위페이지")
                    }
                    
                    NavigationLink {
                        Text("두번째 하위페이지 입니다.")
                    } label: {
                        Text("두번째 하위페이지")
                    }
                    
                    NavigationLink {
                        Text("세번째 하위페이지 입니다.")
                    } label: {
                        Text("세번째 하위페이지")
                    }
                    
                    NavigationLink {
                        Text("네번째 하위페이지 입니다.")
                    } label: {
                        Text("네번째 하위페이지")
                    }
                }
                .navigationTitle("리스트")
            }
            
            // 탭 아이템
            .tabItem {
                Label("first", systemImage: "tray.and.arrow.down.fill")
            }
            
            Text("두번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("세번째 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("네번째 페이지")
                .tabItem {
                    Label("fourth", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("온보딩1")
                }
                
                ZStack {
                    Color.green.ignoresSafeArea()
                    Text("온보딩2")
                }
                
                
                ZStack {
                    Color.pink.ignoresSafeArea()
                    VStack {
                        Text("온보딩3")
                        
                        Button {
                            showModal = false
                        } label: {
                            Text("Start")
                        }

                    }
                }
            }
            .tabViewStyle(.page)
        })
        .onAppear { // 화면이 불리자마자 보여지는 부분
            // 이 화면이 불리자마자 온보딩 화면이 뜰 것이라서 모달창 true 할당
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
