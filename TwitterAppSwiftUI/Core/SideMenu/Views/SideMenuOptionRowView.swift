//
//  SideMenuOptionRowView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/07.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: viewModel.imageName)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
