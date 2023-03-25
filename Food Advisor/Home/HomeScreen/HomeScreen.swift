//
//  HomeScreen.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            
            Header()
            
            List(homeViewModel.posts) { post in
                PostView(postBody: post.body)
            }
            .listStyle(.plain)
            .onAppear {
                
                homeViewModel.fetchPosts()
            }
        }
        
        Spacer()
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
