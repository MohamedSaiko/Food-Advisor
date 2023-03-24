//
//  PostHeader.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack(spacing: 4.0) {
                
                Image("\(ahmed)")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading, spacing: 2.0) {
                    Text("Ahmed Saad")
                        .font(.headline)
                        .fontWeight(.regular)
                    
                    Text("1 sec ago")
                        .font(.footnote)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            Image("\(more)")
                .resizable()
                .frame(width: 16, height: 4)
                .padding(.horizontal, 4)
        }
    }
}

