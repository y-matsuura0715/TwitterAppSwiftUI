//
//  FeedView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/03.
//

import SwiftUI

struct FeedView: View {
    
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                //LazyVStack:画面に表示されている領域のみ情報を表示する(メモリ消費の削減)
                LazyVStack{
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image("plus.circle")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
