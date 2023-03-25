//
//  HomeViewModel.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    @Published var posts: [Post] = []
    
    private let networkManager = NetworkManager()
    private var postssubscribers = Set<AnyCancellable>()
    
    func fetchPosts() {
        
        networkManager.getPosts()
            .sink { result in
                
                switch result {
                case .failure(let error):
                    print(String(describing: error))
                default:
                    print("Completed!")
                }
                
            } receiveValue: { [weak self] postsData in
                guard let self = self else {
                    return
                }
                DispatchQueue.main.async {
                    self.posts = postsData.posts
                }
            }.store(in: &postssubscribers)
    }
}
