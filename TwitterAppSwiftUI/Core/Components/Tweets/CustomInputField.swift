//
//  SwiftUIView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/10.
//

import SwiftUI

struct CustomInputField: View {
    
    let imageName: String
    let placeholderText: String
    
    @Binding var text : String
    
    var body: some View {
        VStack{
            HStack(){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.gray))
                
                TextField(placeholderText, text: $text)
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
