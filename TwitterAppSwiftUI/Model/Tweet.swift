//
//  Tweet.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/25.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
}
