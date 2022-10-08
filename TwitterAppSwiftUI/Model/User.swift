//
//  User.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/21.
//

import FirebaseFirestoreSwift
import Firebase

struct User: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
    
    var isCurrenyUser: Bool { return Auth.auth().currentUser?.uid == id }
}
