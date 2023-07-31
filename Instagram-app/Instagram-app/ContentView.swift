//
//  ContentView.swift
//  Instagram-app
//
//  Created by Mehdi on 31/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            TabView{
                HomeView()
                    .tabItem {
                        Image("home")
                    }
                Image("search")
                    .tabItem {
                        Image("search")
                    }
                
                Image("reels")
                    .tabItem {
                        Image("reels")
                    }
                
                
                Image("shop")
                    .tabItem {
                        Image("shop")
                    }
                
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
                    .tabItem {
                        Image("tab-profile")
                    }
            }
        }
    }
}
