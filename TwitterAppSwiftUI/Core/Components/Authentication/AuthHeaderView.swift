//
//  Authentication.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/10.
//

import SwiftUI

struct AuthHeaderView: View {
    
    let title1: String
    let title2: String
    
    var body: some View {
        // parent container
        VStack {
            // header view
            VStack(alignment: .leading) {
                HStack { Spacer() }
                Text(title1)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text(title2)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding()
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundShape(corners: [.bottomRight]))
        }
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Hello", title2: "Welcomback")
    }
}
