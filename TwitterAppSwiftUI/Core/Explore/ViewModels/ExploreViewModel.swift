//
//  File.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var searchText = ""
    
    var searchableUsers: [User] {
        if searchText.isEmpty {
            return users
        } else {
            let lowercasedQuery = searchText.lowercased()
            
            return users.filter({
                $0.username.contains(lowercasedQuery) || $0.fullname.contains(lowercasedQuery)
            })
        }
    }
    
    let service = UserService()
    
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers { users in
            self.users = users
            
            print("DEBUG: Userd \(users)")
        }
    }
}
