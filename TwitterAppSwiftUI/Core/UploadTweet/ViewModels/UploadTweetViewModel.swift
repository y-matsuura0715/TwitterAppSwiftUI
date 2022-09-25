//
//  UploadTweetViewModel.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/25.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            } else {
                
            }
        }
    }
}
