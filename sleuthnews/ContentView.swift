//
//  ContentView.swift
//  sleuthnews
//
//  Created by Mitja Felicijan on 16/05/2023.
//

import SwiftUI
import Foundation

struct ContentView: View {
    let titles = newsTitles
    
    var body: some View {
        NavigationView {
            List {
                ForEach(titles, id: \.self) { title in
                    NavigationLink(destination: Text(title)) {
                        VStack(alignment: .leading) {
                            Text(title)
//                            Text("Score: 123")
//                                .font(.system(size: 12))
//                                .foregroundColor(.gray)
                        }
                       
                    }
                    .padding(5)
                }
                .navigationTitle("Top News")
            }
            .onAppear {
//                APIManager.fetchTopStories(numOfStories: 30)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
