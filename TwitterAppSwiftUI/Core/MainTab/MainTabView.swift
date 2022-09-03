//
//  MainTabView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/03.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectIndex = 0
    var body: some View {
        TabView(selection: $selectIndex){
            FeedView()
                .onTapGesture {
                    self.selectIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    self.selectIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            NotificationsView()
                .onTapGesture {
                    self.selectIndex = 2
                }.tag(2)
                .tabItem{
                    Image(systemName: "bell")
                }
            
            MessagesView()
                .onTapGesture {
                    self.selectIndex = 3
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(3)
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
