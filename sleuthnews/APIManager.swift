//
//  JSONApiHandlers.swift
//  sleuthnews
//
//  Created by Mitja Felicijan on 16/05/2023.
//
import Foundation

let newsTitles = [
    "The Sourdough Framework",
    "Widely used chemical strongly linked to Parkinson’s disease",
    "Microsoft will upgrade Windows 10 21H2 users whether they like it or not",
    "A guidance language for controlling LLMs",
    "Pinball is booming in America, thanks to nostalgia and canny marketing",
    "Mullvad Leta (Search Engine)",
    "Apple previews Live Speech, Personal Voice, and more new accessibility features",
    "Experiments in Making Cocktail Ice",
    "So, How Do You Refill an Aquifer?",
    "Optimization Without Derivatives: Prima Fortran Version and Inclusion in SciPy",
    "Why Most Startups Are Doing Data-Driven Decision Making Wrong",
    "Erlang/OTP 26 Highlights",
    "JPMorgan Chase & Co tracks employees to dystopian extents",
    "Rational Magic",
    "Artists must be allowed to make bad work",
    "CS 61B Data Structures, Spring 2023 UC Berkeley",
    "Seaflooding",
    "Digital Audio Workstation Front End Development Struggles",
    "BuildZoom (better way to build custom homes) Is hiring a Growth Associate",
    "Goodbye, section 2.8 and hello to Cloudflare’s new terms of service",
    "Why you should still read the docs",
    "Bard generates clean JSON only if you threaten to take a human life",
    "Chosen-prefix collision for SHA-1",
    "ChatGPT’s Sam Altman Calls on Congress to Adopt Safety Standards for AI Systems",
    "Show HN: Oblivus GPU Cloud – Affordable and scalable GPU servers from $0.29/hr",
    "SQLite 3.42.0",
    "Pixpaint",
    "Notes on rarely-seen game mechanics",
    "OpenAI chief goes before US Congress to propose licenses for building AI",
    "Why `fsync()`: Losing unsynced data on a single node leads to global data loss",
]

//struct APIManager {
//    static func fetchTopStories(numOfStories: Int) {
//        // Create a URL object with the Hacker News API endpoint for top stories
//        guard let url = URL(string: "https://hacker-news.firebaseio.com/v0/topstories.json") else {
//            print("Invalid URL")
//            return
//        }
//        
//        // Create a URLSession object
//        let session = URLSession.shared
//        
//        // Create a data task for the URLSession to fetch the data
//        let dataTask = session.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                print("Error: \(error.localizedDescription)")
//                return
//            }
//            
//            // Check if the response contains any data
//            guard let jsonData = data else {
//                print("No data received")
//                return
//            }
//            
//            do {
//                // Parse the JSON data into an array of story IDs
//                guard let storyIDs = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [Int] else {
//                    print("Invalid JSON data")
//                    return
//                }
//                
//                var i = 0
//                for storyID in storyIDs {
//                    if i < numOfStories {
//                        fetchStoryDetails(storyID: storyID)
//                        i += 1
//                    }
//                }
//            } catch {
//                print("Error parsing JSON: \(error.localizedDescription)")
//            }
//        }
//        
//        // Start the data task
//        dataTask.resume()
//    }
//    
//    // Function to fetch the details of a specific story given its ID
//    static func fetchStoryDetails(storyID: Int) {
//        // Create a URL object with the Hacker News API endpoint for the specific story
//        let storyURLString = "https://hacker-news.firebaseio.com/v0/item/\(storyID).json"
//        guard let storyURL = URL(string: storyURLString) else {
//            print("Invalid story URL")
//            return
//        }
//        
//        // Create a data task to fetch the story details
//        let storyDataTask = URLSession.shared.dataTask(with: storyURL) { (data, response, error) in
//            if let error = error {
//                print("Error: \(error.localizedDescription)")
//                return
//            }
//            
//            // Check if the response contains any data
//            guard let storyData = data else {
//                print("No data received for story")
//                return
//            }
//            
//            do {
//                // Parse the JSON data into a dictionary representing the story details
//                guard let storyDictionary = try JSONSerialization.jsonObject(with: storyData, options: []) as? [String: Any] else {
//                    print("Invalid story JSON data")
//                    return
//                }
//                
//                // Access the story details
//                let title = storyDictionary["title"] as? String ?? ""
//                let score = storyDictionary["score"] as? Int ?? 0
//                let url = storyDictionary["url"] as? String ?? ""
//                let by = storyDictionary["by"] as? String ?? ""
//                let kids = storyDictionary["kids"] as? Array ?? []
//                
//                // Print the story details
////                print("Title: \(title)")
////                print("Score: \(score)")
////                print("URL: \(url)")
////                print("By: \(by)")
////                print("************************************")
//                
//                print(title)
//                print(kids)
//                
//                DispatchQueue.main.async {
////                    print("hiii")
//                }
//            } catch {
//                print("Error parsing story JSON: \(error.localizedDescription)")
//            }
//        }
//        
//        // Start the story data task
//        storyDataTask.resume()
//    }
//}
