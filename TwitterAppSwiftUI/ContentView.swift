//
//  ContentView.swift
//  TwitterAppSwiftUI
//
//  Created by Y M on 2022/09/03.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            //no user logged in
            if viewModel.userSession == nil {
                LoginView()
            } else {
                //have a logged in user
                mainInterfaceView
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

extension ContentView {
    var mainInterfaceView: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(ShowMenu)
            if(ShowMenu){
                ZStack{
                    Color(.black)
                        .opacity(ShowMenu ? 0.25 : 0.0)
                }.onTapGesture{
                    withAnimation(.easeInOut) {
                        ShowMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: ShowMenu ? 0 : -300)
                .background(ShowMenu ? .white : .clear)
                
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                    withAnimation{
                        ShowMenu.toggle()
                    }
                }, label: {
                    Circle()
                        .frame(width: 32, height: 32)
                })
            }
        }
        //描画時にSideMenu非表示にする
        .onAppear {
            ShowMenu = false
        }
    }
}
