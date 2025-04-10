//
//  Detail.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct Detail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("모달페이지 입니다.2")
            
            Button {
                isPresented = false
            } label: {
                Text("모달 닫힘 버튼")
            }
        }
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
