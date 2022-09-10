//
//  RegistrationView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/10.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    
    var body: some View {
        // parent container
        VStack {
            // header view
            AuthHeaderView(title1: "Get started.", title2: "Create Your Account")
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $password)
                CustomInputField(imageName: "person", placeholderText: "Username", text: $password)
                CustomInputField(imageName: "lock", placeholderText: "Full name", text: $password)
                CustomInputField(imageName: "person", placeholderText: "Password", text: $password)
            }
            .padding(32)
            
            Button {
                
            } label: {
                Text("Sing Up")
                    .font(.headline)
                    .foregroundColor(Color(.white))
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                
            } label: {
                HStack{
                    Text("Already have an account?")
                        .font(.caption)
                    
                    Text("Sing In")
                        .font(.footnote)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 23)
                .foregroundColor(Color(.systemBlue))
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
