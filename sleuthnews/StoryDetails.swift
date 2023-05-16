//
//  StoryDetails.swift
//  sleuthnews
//
//  Created by Mitja Felicijan on 16/05/2023.
//

import SwiftUI

struct StoryDetails: View {
    let story: Story
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("by \(story.by) at \(story.time) with score of \(story.score)")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.top, 1)
                    .padding(.bottom, 1)
                Text(story.url)
                    .foregroundColor(.blue)
                    .underline()
                    .onTapGesture {
                        openLinkInSafari(url: story.url)
                    }
            }
            .padding(.leading, 15)
            
            List {
                ForEach(story.comments, id: \.self) { comment in
                    VStack(alignment: .leading) {
                        Text(comment.text)
                        Text("by \(comment.by) at \(comment.time)")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            .padding(.top, 1)
                    }
                }
            }
        }
        .navigationTitle(story.title)
    }
    
    private func openLinkInSafari(url: String) {
        guard let url = URL(string: url) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

struct StoryDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            StoryDetails(story: Story.init(
                id: 20,
                score: 122,
                title: "News title",
                by: "username",
                url: "https://example.com",
                time: "22:33",
                comments: [
                    Comment(id: 1, text: "Content of comment 1", by: "user 1", time: "20:11"),
                    Comment(id: 2, text: "Content of comment 2", by: "user 2", time: "20:11")
                ]
            ))
        }
    }
}
