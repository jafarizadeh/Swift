//
//  ContentView.swift
//  DesignCodeiOS15
//
//  Created by Mehdi on 04/08/2023.
//

import SwiftUI

struct ContentView: View {    
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @EnvironmentObject var model: Model

    var body: some View {
        ZStack(alignment: .bottom) {
            
            switch selectedTab {
            case .home:
                HomeView()
            case .explore:
                AccountView()
            case .notifications:
                AccountView()
            case .library:
                AccountView()
            }
            
            TabBar()
                .offset(y: model.showDetail ? 200 : 0)
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .environmentObject(Model())
    }
}
