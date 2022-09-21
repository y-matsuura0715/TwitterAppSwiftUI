//
//  User.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/21.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
