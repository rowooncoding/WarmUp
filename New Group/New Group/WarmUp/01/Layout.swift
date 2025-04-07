//
//  Layout.swift
//  WarmUp
//
//  Created by 이로운 on 4/7/25.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            
            Text("Text Element2")
                .font(.subheadline)
                .padding()
                
            Text("Text Element3")
                .font(.body)
                .padding()
            
            HStack {
                MyButton(buttonTitle: "Button1", buttonColor: .blue)
                
                MyButton(buttonTitle: "Button1", buttonColor: .green)
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundStyle(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }

        }
    }
}

#Preview {
    Layout()
}
