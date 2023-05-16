//
//  ContentView.swift
//  sleuthnews
//
//  Created by Mitja Felicijan on 16/05/2023.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    @State var appFreshlyOpened = true
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.stories, id: \.self) { story in
                    NavigationLink(destination: StoryDetails(story: story)) {
                        VStack(alignment: .leading) {
                            Text(story.title)
                            Text("\(story.score) points by \(story.by)")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                                .padding(.top, 1)
                        }
                    }
                }
            }
            .navigationTitle("Top News")
            .refreshable {
                // When user pulls down (gesture) it refreshes data
                // from the server.
                viewModel.fetch()
            }
            .onAppear {
                // This ensures that every time user clicks back
                // data is not fetched from a server.
                if appFreshlyOpened {
                    viewModel.fetch()
                    appFreshlyOpened = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
