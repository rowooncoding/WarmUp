//
//  Modal.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("메인페이지 입니다.")
            
            Button {
                showModal = true
            } label: {
                Text("모달 화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
            Detail(isPresented: $showModal)
        }
    }
}

#Preview {
    Modal()
}
