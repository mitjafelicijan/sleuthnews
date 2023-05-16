//
//  ViewModel.swift
//  sleuthnews
//
//  Created by Mitja Felicijan on 16/05/2023.
//

import Foundation

struct Comment: Hashable, Codable {
    let id: Int
    let text: String
    let by: String
    let time: String
}

struct Story: Hashable, Codable {
    let id: Int
    let score: Int
    let title: String
    let by: String
    let url: String
    let time: String
    let comments: [Comment]
}

class ViewModel: ObservableObject {
    @Published var stories: [Story] = []
    let serverEndpoint = "https://hackernewsaggregateapi.com"
    
    func fetch() {
        guard let url = URL(string: serverEndpoint + "/top-stories.json") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let stories = try JSONDecoder().decode([Story].self, from: data)
                
                DispatchQueue.main.async {
                    print("> Data fetched from server...")
                    self?.stories = stories
                }
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
