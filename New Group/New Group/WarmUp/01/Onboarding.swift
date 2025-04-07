//
//  Onboarding.swift
//  WarmUp
//
//  Created by 이로운 on 4/7/25.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding(.leading)
                .padding(.top, 50)
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding()
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Conbine Photos and Videos with the people closest to you and automatically share new photos from Camera")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.top, 40)
            
            HStack {
                Image(systemName: "plus.square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding()
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Copy & Paste Edits")
                        .font(.headline)
                    Text("Save time by making edits to one photo. then applying the changes to other photos with a tap")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding()
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Merge Duplicates")
                        .font(.headline)
                    Text("Quickly find and mere all your duplicate photos and videos from one central place in the Albums tab.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    Onboarding()
}
