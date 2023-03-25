//
//  PostView.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct PostView: View {
    
    @State var postBody = ""
    
    var body: some View {
        VStack(spacing: 12.0) {
            
            PostHeader()
            
            Text(postBody)
                .font(.callout)
                .fontWeight(.regular)
            
            Image(burger)
                .resizable()
        }
        .padding(.horizontal)
        
    }
}

