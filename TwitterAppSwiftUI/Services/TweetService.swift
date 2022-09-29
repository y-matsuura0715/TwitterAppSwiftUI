//
//  TweetService.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/25.
//

import Firebase
import FirebaseFirestoreSwift

struct TweetService {
    
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void){
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let data = ["uid": uid, "caption": caption, "likes": 0, "timestamp": Timestamp(date: Date())] as [String : Any]
        
        Firestore.firestore().collection("tweets").document()
            .setData(data) { erorr in
                if let error = erorr {
                    print("DEBUG: Failed to upload tweet with error: \(error.localizedDescription)")
                    completion(false)
                    return
                }
                completion(true)
            }
    }
    
    //問題の関数
    func fetchTweets(complation: @escaping([Tweet]) -> Void) {
        Firestore.firestore().collection("tweets").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            let tweets = documents.compactMap({try? $0.data(as: Tweet.self) })
            print("確認1: \(tweets)")
            
            documents.forEach{ doc in
                print("確認2: \(doc.data())")
            }
            complation(tweets)
        }
    }
}
