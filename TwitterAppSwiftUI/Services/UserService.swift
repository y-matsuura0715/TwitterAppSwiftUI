//
//  UserService.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/21.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    //uidをもとにUser情報をコールバックで戻す
    func fetchUser(with uid: String, completion: @escaping(User) -> Void) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }
                guard let user = try? snapshot.data(as: User.self) else { return }
                
                completion(user)
            }
    }
}
