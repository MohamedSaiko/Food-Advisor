//
//  PostView.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(spacing: 12.0) {
            
            PostHeader()
            
            Text("Need a quick and easy dinner idea? Whip up some creamy macaroni and cheese with bacon bits for a tasty meal that's sure to please")
                .font(.callout)
                .fontWeight(.regular)
            
            Image("\(burger)")
                .resizable()
        }
        .padding(.horizontal)
        
        Divider()
    }
}

