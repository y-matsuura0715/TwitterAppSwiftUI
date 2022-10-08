//
//  TweetFilterViewModel.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/04.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replise
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replise: return "Replise"
        case .likes: return "Likes"
        }
    }
}
