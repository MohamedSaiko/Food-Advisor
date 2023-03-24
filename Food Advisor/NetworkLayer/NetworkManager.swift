//
//  NetworkManager.swift
//  Food Advisor
//
//  Created by Mohamed Sayed on 24.03.23.
//

import Foundation
import Combine

struct NetworkManager {
    
    func getPosts() -> AnyPublisher<PostsData, Error> {
        
        let urlString = allPostsUrl
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTaskPublisher(for: url)
        return task
            .map {$0.data}
            .decode(type: PostsData.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
