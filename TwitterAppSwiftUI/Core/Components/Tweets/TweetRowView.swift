//
//  TweetRowView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/03.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            //プロフィール画像 + ユーザ情報 + ツイート
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width:  56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //ユーザ情報 + ツイート日時
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("林太郎")
                            .font(.subheadline).bold()
                        
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                
                    Text("今日も一日,SwiftUIのお勉強です")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //アクションボタン
            HStack {
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.left")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.2.squarepath")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bookmark")
                })
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
