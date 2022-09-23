//
//  RegistrationView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/10.
//

import SwiftUI

struct RegistrationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            //ユーザ登録情報入力後、didAuthenticationUserのフラグにより、画像アップロード画面へ遷移
            NavigationLink(destination: ProfilePhotoSelectorView(), isActive: $viewModel.didAuthenticationUser, label: { })
            
            AuthHeaderView(title1: "Get started.", title2: "Create Your Account")
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                CustomInputField(imageName: "person", placeholderText: "Full name", text: $fullname)
                CustomInputField(imageName: "lock", placeholderText: "Password",isSecureField: true, text: $password)

            }
            .padding(32)
            
            Button {
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
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
                presentationMode.wrappedValue.dismiss()
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
        .ignoresSafeArea()
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
