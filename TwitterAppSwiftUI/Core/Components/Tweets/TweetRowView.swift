//
//  TweetRowView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/03.
//

import SwiftUI
import Kingfisher

struct TweetRowView: View {
    let tweet: Tweet
    
    var body: some View {
        VStack(alignment: .leading){
            
            if let user = tweet.user {
                //プロフィール画像 + ユーザ情報 + ツイート
                HStack(alignment: .top, spacing: 12) {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .frame(width:  56, height: 56)
                        .clipShape(Circle())
                    
                        VStack(alignment: .leading, spacing: 4){
                            HStack{
                                Text(user.fullname)
                                    .font(.subheadline).bold()
                                
                                Text("@\(user.username)")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                
                                Text("2w")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                        
                            Text(tweet.caption)
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                        }
                    
                    //ユーザ情報 + ツイート日時

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

//struct TweetRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRowView()
//    }
//}
