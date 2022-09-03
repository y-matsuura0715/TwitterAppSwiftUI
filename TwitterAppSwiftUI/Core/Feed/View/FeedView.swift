//
//  FeedView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/03.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ScrollView{
            //LazyVStack:画面に表示されている領域のみ情報を表示する(メモリ消費の削減)
            LazyVStack{
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
