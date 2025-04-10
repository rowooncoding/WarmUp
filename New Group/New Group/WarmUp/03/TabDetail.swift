//
//  TabDetail.swift
//  WarmUp
//
//  Created by 이로운 on 4/10/25.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("this is Detail page")
        }
        
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("this is Detail page")
            
            Button {
                
            } label: {
                Text("Continue")
                    .padding()
                    .background(.green)
                    .cornerRadius(10)
            }
        }
        .background(.blue)
    }
}


struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("this is Detail page")
        }
        .background(.green)
    }
}

#Preview {
    TabDetail()
}
