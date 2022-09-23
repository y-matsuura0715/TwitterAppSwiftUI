//
//  File.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
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
