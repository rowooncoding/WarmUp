//
//  OnBoardingSample.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct OnBoardingSample: View {
    // 구조체 따기
    let onBoardingTitle: String
    let backgroundColor: Color
    let showButton: Bool
    
    @Binding var showModal: Bool
    
    var body: some View {
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            if showButton == true {
                VStack {
                    Text(onBoardingTitle)
                    
                    Button {
                        showModal = false
                    } label: {
                        Text("Start")
                    }
                }
            } else {
                Text(onBoardingTitle)
            }
        }
    }
}

#Preview {
    OnBoardingSample(onBoardingTitle: "기본 타이틀", backgroundColor: .gray, showButton: false, showModal: .constant(true))
}
