//
//  SimpleView.swift
//  WarmUp
//
//  Created by 이로운 on 4/7/25.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        Image(systemName: "pencil")
            .resizable() //  크기 재설정(최대한 늘이기)
            .scaledToFit() // 비율에 맞게
            .frame(width: 200, height: 200) // 이미지 사이즈 변경
        
        Text("헤드라인 입니다")
            .font(.headline)
            .bold()
            .padding()
        
        Text("서브 헤드라인 입니다.")
            .font(.subheadline)
            .padding()
        
        Text("바디 입니다.")
            .font(.body)
            .padding()
        
        Button {
            // do...
        } label: {
            Text("Click Me")
                .padding() // 순서 주의!
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
                
        }

    }
}

#Preview {
    SimpleView()
}
