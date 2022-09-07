//
//  UserStatsView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/06.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack{
            HStack {
                Text("82")
                    .font(.subheadline)
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack{
                Text("4")
                    .font(.subheadline)
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
